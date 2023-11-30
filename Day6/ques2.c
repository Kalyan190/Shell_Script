#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int search(int arr[], int size, int target) {
    for (int i = 0; i < size; i++) {
        if (arr[i] == target) {
            return i;
        }
	else if(arr[size-i]==target){
	    return size-i;
	}
    }
    return -1;
}

int main() {
    int n;
    int target;
    printf("Enter the number of random numbers to generate: ");
    scanf("%d", &n);

    int numbers[n];

    printf("Generated numbers: ");
    for (int i = 0; i < n; i++) {
        numbers[i] = rand() % 100;
        printf("%d ", numbers[i]);
    }


    printf("\nEnter the number to search for: ");
    scanf("%d", &target);

    pid_t child_pid = fork();

    if (child_pid == -1) {
        perror("Fork failed");
        exit(1);
    } else if (child_pid == 0) {

        int result = search(numbers, n, target);
        if (result != -1) {
            printf("Child: %d found at index %d.\n", target, result);
        } else {
            printf("Child: %d not found.\n", target);
        }
    } else {

        wait(NULL);
        printf("Parent: Child process completed.\n");
    }
      return 0;
}
