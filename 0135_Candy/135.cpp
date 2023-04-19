#include <vector>
#include <iostream>
#include <numeric>

using namespace std;

class Solution
{
public:
    int candy(vector<int> &ratings)
    {
        int count = ratings.size();
        if (count < 2)
        {
            return count;
        }
        vector<int> candys(count, 1);
        for (int i = 1; i < count; i++)
        {
            if (ratings[i - 1] < ratings[i])
            {
                candys[i] = candys[i - 1] + 1;
            }
        }

        for (int i = count - 1; i > 0; i--)
        {
            if (ratings[i] < ratings[i - 1])
            {
                candys[i - 1] = max(candys[i - 1], candys[i] + 1);
            }
        }

        int res = accumulate(candys.begin(), candys.end(), 0);
        return res;
    }
};

int main()
{
    Solution s = Solution();
    vector<int> v = {1, 2, 2};
    auto vec = s.candy(v);
    cout << vec << endl;
    return 0;
}
