#include <iostream>
#include <stdlib.h>

using namespace std;


class Solution {
public:
    double myPow(double x, int n) {
        if (n == 0) {
            return 1;
        }
        auto answer = myPow(x, abs(n) / 2);

        answer = (n % 2 == 0) ? answer * answer : answer * answer * x;

        return n > 0 ? answer : 1 / answer;
    }
};

int main() {
    Solution s = Solution();
    auto pow = s.myPow(2, 10);
    cout << pow << endl;
    return 0;
}