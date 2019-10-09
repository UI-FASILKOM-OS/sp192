#include <unistd.h> 
#include <stdlib.h> 
int main(){     
	write(1, "This is Standard Output\n", 24);     
	write(2, " This is Standard Error\n",  23);     
	exit(0); 
}
