- **Memory limit:** 512 MB

You are given all numbers between 1,2,…,n1,2,\ldots,n1,2,…,n except one. Your task is to find the missing number.

# Input

The first input line contains an integer nnn.
The second line contains n−1n-1n−1 numbers. Each number is distinct and between 111 and nnn (inclusive).

# Output

Print the missing number.

# Constraints

$2 \le n \le 2 \cdot 10^5$

# Example

Input:

5
2 3 1 5

Output:
4
## Solution

```c++
#include <iostream>

using namespace std;

int main(){
    int n;
    cin>>n;
    cout<<n;
    int k = n*(n+1)/2;
    for(int i = 0; i < n-1; i++){
	int temp;
	cin>>temp;
	k-=temp;
    }
    cout<<k;
    return 0;
}

```