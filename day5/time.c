#include <stdio.h>

int main() {
  // Declare variables
  int n, i, j, bt[100], at[100], wt[100], tat[100];
  float twt = 0, ttat = 0;

  // Read the number of processes
  printf("Enter the number of processes: ");
  scanf("%d", &n);

  // Read the burst time and arrival time of each process
  printf("Enter the burst time and arrival time of each process:\n");
  for (i = 0; i < n; i++) {
    scanf("%d %d", &bt[i], &at[i]);
  }

  // Calculate the waiting time for each process
  wt[0] = 0;
  for (i = 1; i < n; i++) {
    wt[i] = bt[i - 1] + wt[i - 1];
  }

  // Calculate the turnaround time for each process
  tat[0] = bt[0];
  for (i = 1; i < n; i++) {
    tat[i] = bt[i] + wt[i];
  }

  // Calculate the total waiting time and turnaround time
  for (i = 0; i < n; i++) {
    twt += wt[i];
    ttat += tat[i];
  }

  // Calculate the average waiting time and turnaround time
  float avg_wt = twt / n;
  float avg_tat = ttat / n;

  // Print the average waiting time and turnaround time
  printf("Average waiting time = %.2f\n", avg_wt);
  printf("Average turnaround time = %.2f\n", avg_tat);

  return 0;
}
