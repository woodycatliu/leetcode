
class Solution {
    func climbStairs(_ n: Int) -> Int {
        return _climbStairs(n)
    }
    
    fileprivate func _climbStairs(_ n: Int) -> Int {
        if n <= 3 {
            return n
        }
        var r = [0, 1, 2, 3]
        
        for i in 4...n {
            r.append(r[i - 1] + r[i - 2])
        }
        
        return r[n]
    }
}
