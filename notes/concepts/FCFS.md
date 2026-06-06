---
tags:
  - algorithm
  - memory
---




```c
#include <stdio.h>

  

int main() {

int n;

float avgTAT = 0, avgWT = 0;

  

printf("Enter number of processes: ");

scanf("%d", &n);

  

int AT[n], BT[n], CT[n], TAT[n], WT[n];

  

for(int i = 0; i < n; i++) {

printf("\nEnter Arrival Time and Burst Time for P%d: ", i + 1);

scanf("%d %d", &AT[i], &BT[i]);

}

  

// First process completion time

CT[0] = AT[0] + BT[0];

  

for(int i = 1; i < n; i++) {

if(CT[i - 1] < AT[i])

CT[i] = AT[i] + BT[i]; // CPU is idle

else

CT[i] = CT[i - 1] + BT[i];

}

  

for(int i = 0; i < n; i++) {

TAT[i] = CT[i] - AT[i];

WT[i] = TAT[i] - BT[i];

  

avgTAT += TAT[i];

avgWT += WT[i];

}

  

avgTAT /= n;

avgWT /= n;

  

printf("\n\nAverage Turnaround Time: %.2f\n", avgTAT);

printf("Average Waiting Time: %.2f\n", avgWT);

  

return 0;

}

```