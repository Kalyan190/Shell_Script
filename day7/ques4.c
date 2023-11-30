#include <stdio.h>
#include <unistd.h>

int main() {
    pid_t child_pid = fork();

    if (child_pid == -1) {
        perror("fork");
        return 1;
    }

    if (child_pid == 0) {
        // This is the child process
        printf("Child Process: Hello from Child (PID = %d)\n", getpid());
    } else {
        // This is the parent process
        printf("Parent Process: Hello from Parent (PID = %d)\n", getpid());
    }

    return 0;
}
