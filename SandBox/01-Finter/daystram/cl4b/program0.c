#include <fcntl.h>
#include <semaphore.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <unistd.h>

#define BUFFER_SIZE 32
#define FLAGS       O_CREAT | O_RDWR
#define PROTECTION  PROT_READ | PROT_WRITE
#define VISIBILITY  MAP_SHARED
#define SFILE       "demo-file.bin"

typedef struct {
    sem_t sync;
    char  data[BUFFER_SIZE];
} response;

int main(int argc, char *argv[]) {
    int mem = open(SFILE, FLAGS, S_IRWXU);
    int ssize = sizeof(response);
    truncate(SFILE, ssize);
    response* mymap = mmap(NULL, ssize, PROTECTION, VISIBILITY, mem, 0);

    if (mymap == MAP_FAILED) {
        printf("mmap(): FAILED\n");
        exit(1);
    }
  
    sem_init(&(mymap->sync), 1, 0);

    char line[BUFFER_SIZE];
    FILE* queue = fopen("queue.txt", "r");;
    while(fgets(line, BUFFER_SIZE, queue) != NULL) {;
        line[strlen(line) - 1] = '\0';
        if (access(line, F_OK|X_OK) == 0) {
            if (!fork()) {
                char executable[BUFFER_SIZE+2];
                sprintf(executable, "./%s", line);
                execlp(executable, executable, NULL);
            } else {
                wait(NULL);
                sem_wait(&(mymap->sync));
                printf("%s\n", mymap->data);
            }
        }
    }

    fclose(queue);
    close(mem);
}
