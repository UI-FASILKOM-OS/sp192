#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>

void main(int argc, char *argv[]) {
   char list [16][32];
   int currentLine = 0;
   int i = 0;
   FILE *queue = fopen("queue.txt", "r");

   while (fgets(list[i], sizeof list, queue) != NULL) {
      list[i][strlen(list[i] - 1)] = '\0'];
      if (strcmp("prog2", list[i] == 0)) {
         currentLine = i;
      }
      i++;
   }
   

   if (fork() == 0) {
      if (currentLine>0) { 
         char executable[32];
         sprintf(executable, "./%s", list[currentLine-1]);
         execlp(executable, list[currentLine - 1], NULL);
      } 

   } else {
      wait(NULL);
      printf("Hello, program2\n");
   }
}

/*
 * TAKE NOTE(MA)
 * Pada program ini, print pada child akan dilakukan terlebih dahulu
 * karena setelah dilakukan fork, 
 * proses parent akan memasuki statement else
 * dan akan menunggu hingga proses child selesai menjalankan program
 */