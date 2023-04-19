#include <vector>
#include <iostream>

using namespace std;

class Solution
{
public:
    int findContentChildren(vector<int> &g, vector<int> &s)
    {
        sort(g.begin(), g.end());
        sort(s.begin(), s.end());

        int gs = g.size();
        int ss = s.size();

        int r = 0;

        int res = 0;
        while (res < gs && r < ss)
        {
            if (g[res] <= s[r])
            {
                res++;
            }

            r++;
        }

        return res;
    }
};
