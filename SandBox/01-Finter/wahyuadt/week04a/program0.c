#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>
#include <string.h>

void main(int argc, char *argv[]) {
        int count = 0;
        char queue [16][32];
        FILE *fp = fopen("queue.txt", "r");
        int i = 0;
        while(fgets(queue[i], sizeof queue, fp) != NULL) {
                queue[i][strlen(queue[i]) - 1] = '\0';
		FILE *file; 
                if (strcmp("program1", queue[i]) == 0) {
			if ((file=fopen("program1.c", "program1.c"))){
				printf("EXISTTSSS");
				fclose(file);
				return 1;
			} else {
				printf("NOOOT EXISSSSST");
				return 0;
			}
                        count = i;
                }
                i++;
        }

        fclose(fp);
        if (!fork()) {
                if (count > 0) {
                        char executable[34];
                        sprintf(executable, "./%s", queue[count - 1]);
                        execlp(executable, queue[count - 1], NULL);
                }
        } else {
                wait(NULL);
                printf("Hello, program1\n");
        }
}
