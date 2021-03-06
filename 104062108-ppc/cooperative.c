#include <8051.h>

#include "cooperative.h"

/*
 * @@@ [2 pts] declare the static globals here using 
 *        __idata __at (address) type name; syntax
 * manually allocate the addresses of these variables, for
 * - saved stack pointers (MAXTHREADS)
 * - current thread ID
 * - a bitmap for which thread ID is a valid thread; 
 *   maybe also a count, but strictly speaking not necessary
 * - plus any temporaries that you need.
 */
__idata __at(0x20) char SSPointers[MAXTHREADS];
__idata __at(0x24) char bitmap[MAXTHREADS];
__idata __at(0x28) char IDnum;
__idata __at(0x2A) char SP_save;
__idata __at(0x2B) char IDsave;
__idata __at(0x2C) char i;

/*
 * @@@ [8 pts]
 * define a macro for saving the context of the current thread by
 * 1) push ACC, B register, Data pointer registers (DPL, DPH), PSW
 * 2) save SP into the saved Stack Pointers array
 *   as indexed by the current thread ID.
 * Note that 1) should be written in assembly, 
 *     while 2) can be written in either assembly or C
 */
#define SAVESTATE                             \
    {                                         \
        __asm push ACC                        \
            push B                            \
                push DPL                      \
                    push DPH                  \
                        push PSW              \
                            clr RS1           \
                                clr RS0       \
                                    __endasm; \
        SSPointers[IDnum] = SP;               \
    }

/*
 * @@@ [8 pts]
 * define a macro for restoring the context of the current thread by
 * essentially doing the reverse of SAVESTATE:
 * 1) assign SP to the saved SP from the saved stack pointer array
 * 2) pop the registers PSW, data pointer registers, B reg, and ACC
 * Again, popping must be done in assembly but restoring SP can be
 * done in either C or assembly.
 */
#define RESTORESTATE                  \
    {                                 \
        SP = SSPointers[IDnum];       \
        __asm pop PSW                 \
            pop DPH                   \
                pop DPL               \
                    pop B             \
                        pop ACC       \
                            __endasm; \
    }

/* 
  * we declare main() as an extern so we can reference its symbol
  * when creating a thread for it.
  */

extern void main(void);

/*
 * Bootstrap is jumped to by the startup code to make the thread for
 * main, and restore its context so the thread can run.
 */

void Bootstrap(void)
{
    /*
       * @@@ [2 pts] 
       * initialize data structures for threads (e.g., mask)
       *
       * optional: move the stack pointer to some known location
       * only during bootstrapping. by default, SP is 0x07.
       *
       * @@@ [2 pts]
       *     create a thread for main; be sure current thread is
       *     set to this thread ID, and restore its context,
       *     so that it starts running main().
       */
    for (i = 0; i < MAXTHREADS; i++)
    {
        bitmap[i] = 0;
    }
    IDnum = ThreadCreate(main);
    RESTORESTATE;
}

/*
 * ThreadCreate() creates a thread data structure so it is ready
 * to be restored (context switched in).
 * The function pointer itself should take no argument and should
 * return no argument.
 */
ThreadID ThreadCreate(FunctionPtr fp)
{
   
    /** @@@ [2 pts] */
    /** check to see we have not reached the max #threads.
    * if so, return -1, which is not a valid thread ID.
    */
    for (i = 0; i < MAXTHREADS; i++)
        if (!bitmap[i])
            break;
    if (i == MAXTHREADS)
    {
        return -1;
    }
    
    /** @@@ [5 pts]*/
    /**     otherwise, find a thread ID that is not in use,
     *     and grab it. (can check the bit mask for threads),
     */
    for (i = 0; i < MAXTHREADS; i++)
        if (!bitmap[i])
            break;
    
    /** @@@ [18 pts] below*/
    /** a. update the bit mask 
     (and increment thread count, if you use a thread count, 
        but it is optional)*/
    SP_save = SP;
    bitmap[i] = 1;
    SP = 0x3F + i * 0x10;
    IDsave = i<<3;
    
    /*b. calculate the starting stack location for new thread
    c. save the current SP in a temporary
        set SP to the starting location for the new thread
    d. push the return address fp (2-byte parameter to
        ThreadCreate) onto stack so it can be the return
        address to resume the thread. Note that in SDCC
        convention, 2-byte ptr is passed in DPTR.  but
        push instruction can only push it as two separate
        registers, DPL and DPH.
    e. we want to initialize the registers to 0, so we
        assign a register to 0 and push it four times
        for ACC, B, DPL, DPH.  Note: push #0 will not work
        because push takes only direct address as its operand,
        but it does not take an immediate (literal) operand.
        */
    __asm
    push DPL
    push DPH
    mov a,#0x00
    push a
    push a
    push a
    push a
    __endasm;

    /*f. finally, we need to push PSW (processor status word)
        register, which consist of bits
        CY AC F0 RS1 RS0 OV UD P
        all bits can be initialized to zero, except <RS1:RS0>
        which selects the register bank.  
        Thread 0 uses bank 0, Thread 1 uses bank 1, etc.
        Setting the bits to 00B, 01B, 10B, 11B will select 
        the register bank so no need to push/pop registers
        R0-R7.  So, set PSW to 
        00000000B for thread 0, 00001000B for thread 1,
        00010000B for thread 2, 00011000B for thread 3.*/
    __asm
    push _IDsave
    __endasm;
        
    /*g. write the current stack pointer to the saved stack
        pointer array for this newly created thread ID
    h. set SP to the saved SP in step c.*/
    SSPointers[i] = SP;
    SP = SP_save;
    /*i. finally, return the newly created thread ID. */    
    return i;  
}

/*
 * this is called by a running thread to yield control to another
 * thread.  ThreadYield() saves the context of the current
 * running thread, picks another thread (and set the current thread
 * ID to it), if any, and then restores its state.
 */

void ThreadYield(void)
{
    SAVESTATE;
    do
    {
        /*
                 * @@@ [8 pts] do round-robin policy for now.
                 * find the next thread that can run and 
                 * set the current thread ID to it,
                 * so that it can be restored (by the last line of 
                 * this function).
                 * there should be at least one thread, so this loop
                 * will always terminate.
                 */
        if (IDnum == MAXTHREADS - 1)
        {
            IDnum = 0;
        }
        else
        {
            IDnum++;
        }
        if (bitmap[IDnum] > 0)
            break;
    } while (1);
    RESTORESTATE;
}

/*
 * ThreadExit() is called by the thread's own code to termiate
 * itself.  It will never return; instead, it switches context
 * to another thread.
 */
void ThreadExit(void)
{
    /*
         * clear the bit for the current thread from the
         * bit mask, decrement thread count (if any),
         * and set current thread to another valid ID.
         * Q: What happens if there are no more valid threads?
         */
    bitmap[IDnum] = 0;
    while (bitmap[IDnum] <= 0)
    {
        if (IDnum == MAXTHREADS - 1)
        {
            IDnum = 0;
        }
        else
        {
            IDnum++;
        }
    }
    RESTORESTATE;
}
