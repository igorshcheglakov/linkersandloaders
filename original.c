#include <stdio.h>

void foo(void)
{
    printf("foo() from original.c\n");
}

void bar(void)
{
    foo();
}
