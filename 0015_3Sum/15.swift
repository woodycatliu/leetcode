class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res: [[Int]] = []
        if nums.count < 3{ return res}
        let nums = nums.sorted()
        
        func twoSum(_ lo:Int, _ hi: Int, target: Int){
            var i = lo
            var j = hi
            
            while i < j {
                if nums[i] + nums[j] == target {
                    res.append([-target,nums[i],nums[j]])
                    repeat { i += 1 }while i < j && nums[i-1] == nums[i]
                    repeat { j -= 1}while i < j && nums[j] == nums[j+1]
                } else if nums[i] + nums[j] < target{ i += 1 }
                else { j -= 1}
            }
        }
        
        for i in 0..<nums.count - 2 {
            if i > 0 && nums[i] == nums[i-1]{
                continue
            }
            twoSum(i + 1, nums.count - 1, target: -nums[i])
        }
        
        return res
    }
}

