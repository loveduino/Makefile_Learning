#include <stdio.h>
#include "foo1.h"
#include "foo2.h"

int main (int argc, char *argv[])
{
    printf("hello world\n");
    int a = 34, b = 56;
    printf("min = %d\n", find_min(a, b));
    printf("max = %d\n", find_max(a, b));
    return(0);
}

