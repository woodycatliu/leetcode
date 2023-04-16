#include <iostream>
#include <string>

using namespace std;

class Solution
{
public:
    string addBinary(string a, string b)
    {
        int l = a.size() - 1;
        int r = b.size() - 1;
        int i = max(l, r);
        auto ans = l > r ? a : b;
        auto carry = false;

        while (l >= 0 && r >= 0)
        {
            if (a[l] == '1' && b[r] == '1')
            {
                ans[i] = carry ? '1' : '0';
                carry = true;
            }
            else if (a[l] == '1' || b[r] == '1')
            {
                ans[i] = carry ? '0' : '1';
                carry = ans[i] == '0';
            }
            else
            {
                ans[i] = carry ? '1' : '0';
                carry = false;
            }
            l--;
            r--;
            i--;
        }

        while (carry)
        {
            if (i < 0)
            {
                ans.insert(0, 1, '1');
                carry = false;
            }
            else
            {
                ans[i] = ans[i] == '0' ? '1' : '0';
                carry = ans[i] == '0';
                i--;
            }
        }

        return ans;
    }
};

int main()
{
    auto s = Solution();

    auto ans = s.addBinary("11", "1");

    cout << ans << endl;

    return 0;
}