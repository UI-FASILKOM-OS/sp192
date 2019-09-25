#include <stdio.h>
#include <pthread.h> 
#include <semaphore.h> 
#include <unistd.h> 
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>
#include <stdlib.h>

void slice_str(const char * str, char * buffer, size_t start, size_t end)
{
    size_t j = 0;
    for ( size_t i = start; i <= end; ++i ) {
        buffer[j++] = str[i];
    }
    buffer[j] = 0;
}

int main(int argc, char *argv[])
{
  fflush(NULL);
  int i=0;
  char linesOfFile[16][128];
  char fileName[128];
  int numberOfLines;
  int indexOfThisFileInQueue;
  char commandToExec[128];
  FILE *fp = fopen("queue.txt", "r");

  while(fgets(linesOfFile[i], sizeof(linesOfFile[0]), fp) != NULL) {
    linesOfFile[i][strlen(linesOfFile[i]) - 1] = '\0'; // remove \n
    slice_str(argv[0], fileName, 2, strlen(argv[0])); // get this filename from argv
    if (strcmp(linesOfFile[i], fileName) == 0) {
      indexOfThisFileInQueue = i;
    }
    i++;
  }
  numberOfLines = i; 
  fclose(fp);

  if (fork() == 0) {
    if (indexOfThisFileInQueue > 0) {
      sprintf(commandToExec, "./%s", linesOfFile[indexOfThisFileInQueue- 1]);
      printf("will exec %s from %s\n", commandToExec, fileName);
      execlp(commandToExec, commandToExec, NULL);
    }
    
  } else {
    wait(NULL);
    printf("Hello advprogram2!\n");
  }
  return 0;
}
