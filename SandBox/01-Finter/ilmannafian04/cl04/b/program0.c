#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>
#include <string.h>
#include <semaphore.h>

sem_t mutex;

void main(int argc, char *argv[]) {
	FILE *fp = fopen("queue.txt", "r");
	char* line[32];

	sem_init(&mutex, 1, 1);

	while(fgets(line, 32, fp) != NULL) {
		if (!fork()) {

		} else {
			wait(NULL);
			printf("Hello, program1\n");
		}
	}
}
