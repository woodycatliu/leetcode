class Solution {
    func reverseBits(_ n: Int) -> Int {
        var n = n
        var num = 0
        
        for _ in 0..<32 {
            num = num << 1 | (n&1)
            n >>= 1
        }
        return num
    }
}
