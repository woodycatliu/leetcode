class Solution {
    func singleNumber(_ nums: [Int]) -> [Int] {
        return _singleNumber(nums)
    }
    
    private func _singleNumber(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        var i = 0
        
        let nums = nums.sorted()
        
        while i < nums.count || res.count < 2 {
            
            if i == nums.count - 1 {
                res.append(nums[i])
                i += 1
                continue
            }
            
            if nums[i] == nums[i + 1] {
                i += 2
                continue
            }
            
            res.append(nums[i])
            
            i += 1
        }
        
        return res
    }
}
