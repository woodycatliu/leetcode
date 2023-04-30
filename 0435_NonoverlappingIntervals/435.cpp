#include <ostream>
#include <vector>
#include <algorithm>

using namespace std;

class Solution
{
public:
    int eraseOverlapIntervals(vector<vector<int>> &intervals)
    {
        if (intervals.empty())
        {
            return 0;
        }

        sort(intervals.begin(), intervals.end(), [](vector<int> &a, vector<int> &b)
             { return a[1] < b[1]; });

        int removed = 0, prev = intervals[0][1];

        intervals.erase(intervals.begin());

        for (auto &i : intervals)
        {
            if (i[0] < prev)
            {
                removed++;
            }
            else
            {
                prev = i[1];
            }
        }
        return removed;
    }
};