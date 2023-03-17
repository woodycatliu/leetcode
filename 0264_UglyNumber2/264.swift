class Solution {
    
    func nthUglyNumber(_ n: Int) -> Int {
        return _nthUglyNumber(n)
    }
    
    private func _nthUglyNumber(_ n: Int) -> Int {
        
        var nums = [1]
        
        var n2 = 0
        var n3 = 0
        var n5 = 0
        
        var temp = 0

        for _ in 0..<n {
            temp = min(nums[n2] * 2,
                       nums[n3] * 3,
                       nums[n5] * 5)
            
            nums.append(temp)
            
            if temp == nums[n2] * 2 {
                n2 += 1
            }
            
            if temp == nums[n3] * 3 {
                n3 += 1
            }
            
            if temp == nums[n5] * 5 {
                n5 += 1
            }
        
        }
        
        return nums[n - 1]
    }
}
