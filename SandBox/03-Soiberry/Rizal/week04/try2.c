#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

pid_t child_pid, wpid;
int status = 0;

//Father code (before child processes start)
void main(void) {
    printf("Hello prog2\n");
}
//Father code (After all child processes end)