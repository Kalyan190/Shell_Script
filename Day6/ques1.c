#include <stdio.h>
#include <unistd.h>

int main()
{
int id;
printf("Hello, World!\n");

id=fork();
if(id>0) {
printf("This is from Process id: %d.\n",getpid());
}
else if(id==0) {
printf("This is from Process id: %d. \n",getpid());
printf("PPID=%d.\n",getppid());
}
else {
// PRINT AN APPROPRIATE OUTPUT MESSAGE
 printf("Fork failed. No child process created.\n");
}

return 0;
}
