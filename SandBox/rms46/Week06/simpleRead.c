// REV01 Mon Oct  7 13:54:24 WIB 2019
// START Mon Oct  7 13:53:00 WIB 2019

// Slide 09 Shell Script  (page 6)


#include <unistd.h>
#include <stdlib.h>

int main(void){
   char buffer[128];
   int nread;

   nread = read(0, buffer, 128);
   if (nread == -1)
      write(2, "Read error\n", 11);
   if ((write(1,buffer,nread)) != nread)
      write(2, "Write error\n",12);
   exit(0);
}

