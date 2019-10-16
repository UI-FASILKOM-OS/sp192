/* forknpipe.c (c) 2007­2009 Rahmat M. Samik­Ibrahim, GPL­like */
/* ************ ************************************************/
#define  BUFSIZE 64
#define  WLOOP   5
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <string.h>
int main(void) {
   char buffer[BUFSIZE];
   char message[]="Hello, what's up?\n";
   int  ii, pipe_fd[2];
   pipe(pipe_fd);
   if (fork() == 0) {
      /* child ****************************************/
      close(pipe_fd[0]);
      printf("I am PID[%d] (child).\n", (int) getpid());
      for (ii=0;ii<WLOOP;ii++)
         write(pipe_fd[1], message, sizeof(message));
      close(pipe_fd[1]);
   } else {
      /* parent ***************************************/
      close(pipe_fd[1]);
      printf("I am PID[%d] (parent).\n",(int) getpid());
      memset(buffer, 0, sizeof(buffer));
      while ((ii=read(pipe_fd[0], 
         buffer, BUFSIZE)) != 0) {
         printf("PARENT READ[%d]:\n%s\n", (int) ii, buffer);
         memset(buffer, 0,sizeof(buffer));
      }
      close(pipe_fd[0]);
   }
   exit(0);
}