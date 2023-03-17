class Solution {
    func findMin(_ nums: [Int]) -> Int {
        return nums.min()!
    }
}

class Solution2 {
    func findMin(_ nums: [Int]) -> Int {
        var mn = Int.max
        nums.forEach { mn = min(mn, $0) }
        return mn
    }
}

