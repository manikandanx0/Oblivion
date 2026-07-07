#include <iostream>
#include <vector>
using namespace std;

int main()
{
    int n, k;
    cin >> n >> k;
    vector<int> nums;
    for (int i = 0; i < n; i++)
    {
        int temp;
        cin >> temp;
        nums.push_back(temp);
    }
    n = 0;
    if (nums.size() > 1)
    {
        k = nums.at(k-1);
        for (int a : nums)
        {
            if (a >= k && a > 0)
            {
                n++;
            }
        }
    }

    cout << n << endl;
    return 0;
}