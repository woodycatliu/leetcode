class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        return _hammingDistance(x, y)
    }
    
    private func _hammingDistance(_ x: Int, _ y: Int) -> Int {
        var diff = x ^ y
        var res = 0
        
        while diff > 0 {
            res += (diff & 1)
            diff >>= 1
        }
        return res
    }
}
