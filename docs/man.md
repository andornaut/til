# Man

## Section numbers
```
$ man man |grep 'section numbers' -A 10
       The table below shows the section numbers of the manual followed by the types of pages they contain.

       1   Executable programs or shell commands
       2   System calls (functions provided by the kernel)
       3   Library calls (functions within program libraries)
       4   Special files (usually found in /dev)
       5   File formats and conventions eg /etc/passwd
       6   Games
       7   Miscellaneous (including macro packages and conventions), e.g. man(7), groff(7)
       8   System administration commands (usually only for root)
       9   Kernel routines [Non standard]

$ man 1 intro|grep DESCRIPTION -A 2
DESCRIPTION
       Section  1  of  the manual describes user commands and tools, for example, file manipulation tools, shells, compilers, web browsers, file and image viewers
       and editors, and so on.

$ man 2 intro|grep DESCRIPTION -A 3 -m 1
DESCRIPTION
       Section  2  of  the manual describes the Linux system calls.  A system call is an entry point into the Linux kernel.  Usually, system calls are not invoked
       directly: instead, most system calls have corresponding C library wrapper functions which perform the steps required (e.g., trapping  to  kernel  mode)  in
       order to invoke the system call.  Thus, making a system call looks the same as invoking a normal library function.
```

## Searching for documentation
```
$ man man|grep -- -k
       man -k [apropos options] regexp ...
       man -k printf
       -k, --apropos
              the $PAGER environment variable.  It is not used in conjunction with -f or -k
```
Substring or exact matching:
```
$ man -k apt|wc -l
63
$ man -k ^apt$
apt (8)              - command-line interface
```
