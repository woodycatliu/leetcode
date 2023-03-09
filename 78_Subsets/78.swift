
class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var nums = nums
        var res: [[Int]] = [[]]
        while !nums.isEmpty {
            let n = nums.removeFirst()
            for arr in res {
                res.append(arr + [n])
            }
        }
        return res
    }
}
