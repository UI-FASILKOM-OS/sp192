#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>

#define LEN 256
int main ()
{
    FILE *fp;
    int i=0;
    char * line = NULL;
    size_t len = 0;
    ssize_t read;
    char * temp[100];
    fp = fopen("queue.txt", "r");

    while ((read = getline(&line, &len, fp)) != -1) {
        temp[i] = line;
        printf("%s\n", temp[i]);   
        i++;

        
    }
}
