class Solution {
    func addDigits(_ num: Int) -> Int {
        if num == 0 { return 0 }
        let n = num % 9
        return n == 0 ? 9 : n
    }
}
