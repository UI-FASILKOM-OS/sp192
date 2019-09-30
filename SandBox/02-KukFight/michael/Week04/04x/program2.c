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
}