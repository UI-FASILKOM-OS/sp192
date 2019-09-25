#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

int main(int argc, char *argv[])
{
	fflush(NULL);
	int i=0;
	char linesOfFile[16][128];
	int numberOfLines;

	FILE *fp = fopen("queue.txt", "r");

	if(fp == NULL)
	{
		printf("queue.txt not found!\n");   
		exit(1);             
	}

	// open queue.txt and save contents to linesOfFile
	while(fgets(linesOfFile[i], sizeof(linesOfFile[0]), fp) != NULL) {
		linesOfFile[i][strlen(linesOfFile[i]) - 1] = '\0'; // remove \n
		i++;
	}
	numberOfLines = i; 
	fclose(fp);

	// check if all programs in queue.txt exist and executable
	for(int j=0; j<numberOfLines; j++) {
		if (access(linesOfFile[j], F_OK|X_OK) != 0) {
			printf("%s not executable!\n", linesOfFile[j]);   
			exit(2);  
		} 
	}


	return 0;
}
