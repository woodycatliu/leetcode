#include <iostream>
#include <vector>

using namespace std;
typedef vector<vector<int> > Res;

class Solution {
public:
    vector<vector<int> > threeSum(vector<int>& nums) {
        int size = nums.size() - 1;
        Res res;
        if (size < 2) { return res; }

        sort(nums.begin(), nums.end());

        for (int i = 0; i<size - 1; i++) {
            cout << i << endl;
            if (i > 0 && nums[i] == nums[i - 1]) {
                continue;
            }
            twoSum(nums, i + 1, size, -nums[i], res);
        }

        return  res;
    }

    void twoSum(vector<int>& nums, int left, int right, int tar, Res &res) {
        while (left < right)
        {
            if (nums[left] + nums[right] == tar) {
                vector<int> a = { -tar, nums[left], nums[right] };

                res.push_back(a);
                left += 1;
                right -= 1;
                while (left < right && nums[left - 1] == nums[left]) 
                {
                    left += 1;
                }

                while (left < right && nums[right + 1] == nums[right])
                {
                    right -= 1;
                }
                
            } else if (nums[left] + nums[right] < tar) {
                left += 1;
            } else {
                right -= 1;
            }
        }
    }

};

int main() {
    cout << "hello" << endl;
    Solution s = Solution();
    vector<int> v = { -1, 0, 1 , 2, -1, -4 };
    auto vec = s.threeSum(v);

    for (auto i : vec ) {
        for (auto j : i ){
            cout << j << endl;
        }
    }

    return 0;
}