// Program to strip all lines in a text file less than 6 characters.
// Input from stdin, Output to stdout.
// 
// Written by Curtis Olson
// August 14, 1993

#include <stdio.h>
#include <string.h>

#define MINLEN 6

main() {
    char str[256];

    while ( gets(str) != NULL ) {
        if (strlen(str) >= MINLEN) {
            puts(str);
        }
    }
}
