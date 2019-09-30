#include <stdio.h> 
#include <stdlib.h> // For exit()
#include <sys/wait.h>
#include <unistd.h> 
#include <string.h>

#define FILE_NAME "program1"
#define CHAR_SIZE 32
#define MAX_QUEUE 16

int main(int argc, char *argv[]) 
{ 
	char filename[100], c;
    int file_pointer = 0;
    char queue [MAX_QUEUE][CHAR_SIZE];
	FILE *fp = fopen("queue.txt","r");
	int counter = 0;

	char buff[255];
	printf("%ld\n",sizeof queue);
	while(fgets(queue[counter], sizeof queue,fp)!= NULL)
	{
		queue[counter][strlen(queue[counter])-1] = '\0';
        if(strcmp(FILE_NAME,queue[counter]) == 0){
			file_pointer = counter;
		}
		printf("%s\n",queue[counter]);
		counter++;
	}
	
	fclose(fp);

	int j = 0;
	printf("%ld\n",sizeof(queue[0]));
	
	// printf("%s\n",queue[1]);
	for(int j = 0;j < counter; j++)
	{
		printf("%s\n",queue[j]);
	}
		
	fclose(fp);
}