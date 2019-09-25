/*
 * Copyright (C) 2016-2019 Rahmat M. Samik-Ibrahim
 * http://rahmatm.samik-ibrahim.vlsm.org/
 * This program is free script/software. This program is distributed in the 
 * hope that it will be useful, but WITHOUT ANY WARRANTY; without even the 
 * implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * REV07 Tue Jan 22 20:45:06 WIB 2019
 * REV06 Wed Aug 29 16:11:46 WIB 2018
 * REV04 Wed Nov  1 13:31:31 WIB 2017
 * START Mon Oct 24 09:42:05 WIB 2016
 */
#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>


void main(void) {
   fflush(NULL);
   FILE * order_file;
   char * line = NULL;
   size_t len = 0;
   ssize_t read;
   char * temp[100];

   order_file = fopen ("queue.txt","r");
   if (order_file == NULL) {
   }

   int i = 0;
   while ((read = getline(&line, &len, order_file)) != -1) {
      temp[i] = line;
      printf("%s\n", temp[i]);
      
      i++;


   }
   for (int i=0; i<sizeof(temp); i++) {
      if (fork() == 0) {
         execlp(temp[i], temp[i], NULL); // ** LOOK THIS! **   

      }
   }
   if (fork() == 0) {
         execlp(temp[i], temp[i], NULL); // ** LOOK THIS! **
         printf("Child:           ");                  // Never Executed!
   

      }
    // } else {
   //    wait(NULL);
   //    printf("Hello program 2!\n");
   // }
}

/*
 * TAKE NOTE(MA)
 * Pada program ini, print pada child akan dilakukan terlebih dahulu
 * karena setelah dilakukan fork, 
 * proses parent akan memasuki statement else
 * dan akan menunggu hingga proses child selesai menjalankan program
 */

