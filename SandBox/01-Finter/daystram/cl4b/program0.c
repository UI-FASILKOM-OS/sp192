#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>
#include <string.h>
#include <sys/mman.h>

#define BUFFER_SIZE 32
#define MYFLAGS      O_RDWR
#define MYPROTECTION PROT_READ|PROT_WRITE
#define MYVISIBILITY MAP_SHARED

char*  sfile="demo-file.bin";

typedef struct {
    char data[BUFFER_SIZE];
} response;

int main(int argc, char *argv[]) {
    char line[BUFFER_SIZE];
    FILE *fp = fopen("queue.txt", "r");
    
    struct stat fsize;
    int ssize = sizeof(response);
    int fd = open(sfile,MYFLAGS,S_IRWXU);

    printf("Create mmap()\n");
    fstat(fd, &fsize);
    if (fsize.st_size < ssize) {
        printf("Does %s exist? Size >= %d?\n", sfile, ssize);
        exit(1);
    }
    response* mymap=mmap(NULL, ssize, MYPROTECTION, MYVISIBILITY, fd, 0);
    if (mymap == MAP_FAILED) {
        printf("mmap(): FAILED\n");
        exit(1);
    }
    mymap->mystring[0]='X';



    while(fgets(line, BUFFER_SIZE, fp) != NULL) {
        line[strlen(line) - 1] = '\0';
        if (!fork()) {
            char executable[34];
            //sprintf(executable, "./%s", queue[count-1]);
            //execlp(executable, executable, NULL);
            printf("%s\n", line);
        } else {
            wait(NULL);
            printf("%s\n", response);
        }
    }
    fclose(fp);
}
