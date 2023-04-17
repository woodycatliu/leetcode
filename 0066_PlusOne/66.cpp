#include <iostream>
#include <vector>
#include "../overload/ostream_ext.h"

using namespace std;

class Solution
{
public:
    vector<int> plusOne(vector<int> &digits)
    {
        int index = digits.size() - 1;

        while (index >= 0 && digits[index] == 9)
        {
            digits[index--] = 0;
        }

        if (index >= 0)
        {
            digits[index]++;
        }
        else
        {
            digits.insert(digits.begin(), 1);
        }

        return digits;
    }
};

int main()
{
    vector<int> q = {9};
    Solution s = Solution();
    auto ans = s.plusOne(q);
    cout << ans << endl;
    return 0;
}