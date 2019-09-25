#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>
#include <string.h>


int main(int argc, char *argv[]) {
    char queue[16][32];
    FILE *fp = fopen("queue.txt", "r");
    int i = 0;
    char *response; // variable to be shared

    while(fgets(queue[i], sizeof queue, fp) != NULL) {
        queue[i][strlen(queue[i]) - 1] = '\0';
        if (!fork()) {
            char executable[34];
            sprintf(executable, "./%s", queue[count-1]);
            execlp(executable, executable, NULL);
        } else {
            wait(NULL);
            printf("%s\n", response);
        i++;
    }
    fclose(fp);
}
