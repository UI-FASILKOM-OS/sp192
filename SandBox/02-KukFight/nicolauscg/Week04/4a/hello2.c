#include <stdio.h>
#include <pthread.h> 
#include <semaphore.h> 
#include <unistd.h> 
#include <sys/types.h>
#include <sys/wait.h>

int main()
{
   // printf() displays the string inside quotation
   	//sem_t mutex;

	fflush(NULL);
   	if (fork() == 0) {
    		execlp("./hello1", "hello1", NULL); // ** LOOK THIS! *
   	} else {
    		wait(NULL);
    		printf("Hello program2!\n");
   	}
  	return 0;
}
