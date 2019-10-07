// REV01 Mon Oct  7 13:56:43 WIB 2019
// START Mon Oct  7 13:54:24 WIB 2019

// Slide 09 Shell Script  (page 7)

#include <unistd.h>
#include <stdlib.h>
int main(void)
{
   write(1, "This is Standard Output\n", 24);
   write(2, "This is Standard Error\n",  23);
   exit(0);
}

