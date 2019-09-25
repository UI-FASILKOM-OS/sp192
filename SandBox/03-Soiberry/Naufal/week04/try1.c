#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

pid_t child_pid, wpid;
int status = 0;

//Father code (before child processes start)
void main(void) {
    for (int id=0; id<1; id++) {
        if ((child_pid = fork()) == 0) {
            execlp("./try2","try2",NULL);
            exit(0);
        }
    }

    while ((wpid = wait(&status)) > 0); // this way, the father waits for all the child processes 

    printf("Hello \n");
}
//Father code (After all child processes end)