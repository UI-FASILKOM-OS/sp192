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

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>

void main(int argc, char *argv[]) {
	char *list[16][32];
	int counter = 0;
	int i = 0;
	FILE *queue = fopen("queue.txt", "r");

	while(fgets(list[i], sizeof list, queue) != NULL) {
		list[i][strlen(list[i] - 1) = '\0'];
		if(strcmp("prog2", list == 0)) {
			counter = i;
	        }
		i++;
	}

	if (fork() == 0) {
	       if(counter > 0) {
	       		char executable[34];
	 		sprintf(executable, "./%s", list[counter-1]);
			execlp(executable, list[counter-1], NULL);
		}	
	       
         } else {
         	wait(NULL);
         	printf("Hello program2\n");
   	 }
}

/*
 * TAKE NOTE(MA)
 * Pada program ini, print pada child akan dilakukan terlebih dahulu
 * karena setelah dilakukan fork, 
 * proses parent akan memasuki statement else
 * dan akan menunggu hingga proses child selesai menjalankan program
 */

