#include <bits/stdc++.h>
using namespace std;

int main() {
	// your code goes here
	int lines;
	cin>>lines;
	int A, B, C;
	for(int i = 0; i<lines; i++){
	    cin>>A>>B>>C;
	    float avg = (A+B)/2.0;
	    if(avg>C){
	        cout<<"YES"<<endl;
	    }
	    else{
	        cout<<"NO"<<endl;
	    }
	    
	}

}
