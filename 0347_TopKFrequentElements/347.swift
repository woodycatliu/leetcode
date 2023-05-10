class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        return _topKFrequent(nums, k)
    }
    
    private func _topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map: [Int: Int] = [:]
        
        for i in nums {
            if var count = map[i] {
                count += 1
                map[i] = count
            } else {
                map[i] = 1
            }
        }
        
        let subarr = map.map {
            ($0, $1)
        }.sorted(by: { $0.1 > $1.1 }).prefix(k).map { $0.0 }
        
        return Array(subarr)
    }
    
}

