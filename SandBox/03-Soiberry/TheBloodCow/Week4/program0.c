nclude <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>

void main(int argc, char *argv[]) {
   char list [16][32];
   int counter = 0;
   int i = 0;
   FILE *queue = fopen("queue.txt", "r");

   while (fgets(list[i], sizeof list, queue) != NULL) {
      list[i][strlen(list[i] - 1) = '\0'];
      if (strcmp("prog2", list[i] == 0)) {
         counter = i;
      }
      i++;
   }
   

   if (fork() == 0) {
      if (counter>0) { 
         char executable[34];
         sprintf(executable, "./%s", list[counter-1]);
         execlp(executable, list[counter - 1], NULL);
      } 

   } else {
      wait(NULL);
      printf("Hello, program1\n");
   }
}

/*
 * TAKE NOTE(MA)
 * Pada program ini, print pada child akan dilakukan terlebih dahulu
 * karena setelah dilakukan fork, 
 * proses parent akan memasuki statement else
 * dan akan menunggu hingga proses child selesai menjalankan program
 */
