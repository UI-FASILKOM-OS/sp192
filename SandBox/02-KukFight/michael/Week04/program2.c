#include <stdio.h> 
#include <stdlib.h> // For exit()
#include <sys/wait.h>
#include <unistd.h> 
#include <string.h>

#define FILE_NAME "program2"

int main(int argc, char *argv[]) 
{ 
	char filename[100], c;
    int count = 0;
    char queue [16][32];
	FILE *fp = fopen("queue.txt","r");
	int i = 0;

    while(fgets(queue[i], sizeof queue,fp) != NULL){
        queue[i][strlen(queue[i])-1] = '\0';
        if(strcmp(FILE_NAME,queue[i]) == 0){
			count = i;
			}
		i++;
    } 

	fclose(fp);
	if (!fork()) {
		if (count >0){
			char executable[34];
			sprintf(executable, "./%s", queue[count-1]);
			execlp(executable, "./%s", queue[count-1],NULL);
			}
	} else {
		wait(NULL);
		printf("Hello %s\n", FILE_NAME);
		}		
}
