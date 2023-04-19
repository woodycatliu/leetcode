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

        int l = 0;
        int r = 0;

        int res = 0;
        while (l < gs && r < ss)
        {
            if (g[l] <= s[r])
            {
                res++;
                l++;
            }

            r++;
        }

        return res;
    }
};