#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <semaphore.h>
#include <sys/mman.h>
#include <sys/stat.h>

#define BUFFER_SIZE 	32
#define FLAGS		O_CREAT | O_RDWR
#define PROTECTION	PROT_READ | PROT_WRITE
#define VISIBILITY	MAP_SHARED
#define SFILE		"demo-file.bin"
#define RESPONSE	"program1"

typedef struct {
	sem_t sync;
	char data[BUFFER_SIZE];
} response;

void main(int argc, char *argv[]) {
	int mem = open(SFILE, FLAGS, S_IRWXU);
	int ssize = sizeof(response);
	response* mymap = mmap(NULL, ssize, PROTECTION, VISIBILITY, mem, 0);
	if (mymap == MAP_FAILED) {
		printf("error\n");
		exit(1);
	}
	memcpy(mymap->data, RESPONSE, sizeof(RESPONSE));
	sem_post(&(mymap->sync));
	close(mem);
}
