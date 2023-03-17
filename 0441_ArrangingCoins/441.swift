class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        let d = Double(n) * 2 + 0.25
        let res = sqrt(d) - 0.5
        return Int(res)
    }
}
