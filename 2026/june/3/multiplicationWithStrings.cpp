#include <iostream>
#include <string>
#include <vector>
using namespace std;

int main(){
    string num1 = "23";
    string num2 = "10";
    int l1 = num1.length();
    int l2 = num2.length();
    int i,j,k = 0;
    vector<char> result(l1+l2-1, '0');
    for(i=l1; i>=0; i--){
        k=l1-i;
        for (j=l2; j>=0; j--){
            char g = (char)(
                    result[k] - '0'
                        +(
                            (num1[i] - '0')
                            *(num2[j] - '0')
                        )
                    );
            result[k + l2 - j] =  g;
        }
    }
    cout<<string(result.rbegin(), result.rend());
}

`