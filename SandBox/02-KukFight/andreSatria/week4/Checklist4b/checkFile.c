// Thank you Danny august for helping me on the program

#include <stdio.h> 
#include <stdlib.h> // For exit()
#include <sys/wait.h>
#include <unistd.h> 
#include <string.h>

#define FILE_NAME "program1"

int main(int argc, char *argv[]) 
{ 
	char filename[100], c;
    int count = 0;
    char queue [16][32];
	FILE *fp = fopen("queue.txt","r");
	int i = 0;
	char executable[34];

    while(fgets(queue[i], sizeof queue,fp) != NULL){
        queue[i][strlen(queue[i])-1] = '\0';
    } 
	strcpy(executable,queue[count-1]);

	fclose(fp);
	printf("%s\n",executable);
	if(access(executable,X_OK)) {
  		printf("not executable");
	} else {
 		 printf("executable");
	}

	
}