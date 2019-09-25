#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>

void main(int argc, char *argv[]) {
   char **list [64][16];
   int counter;
   int i = 0;
   FILE *queue = fopen("queue.txt", "r");

   while (fgets(list[i], sizeof list, queue) != NULL) {
      list[i][strlen(list[i] - 1)] = '\0';
      if (strcmp("prog1", list[i]) == 0) {
         counter = i;
      }
      i++;
   }

   printf("array elements: %s", list);
}

/*
 * TAKE NOTE(MA)
 * Pada program ini, print pada child akan dilakukan terlebih dahulu
 * karena setelah dilakukan fork, 
 * proses parent akan memasuki statement else
 * dan akan menunggu hingga proses child selesai menjalankan program
 */