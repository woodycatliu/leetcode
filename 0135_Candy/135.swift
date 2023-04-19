class Solution {
    
    func candy(_ ratings: [Int]) -> Int {
        guard ratings.count >= 2 else { return ratings.count }
        
        var candys = Array(repeating: 1, count: ratings.count)
        
        for i in ratings.indices {
            if i > 0,
               ratings[i - 1] < ratings[i] {
                candys[i] = candys[i - 1] + 1
            }
        }
        
        for i in ratings.indices.reversed() {
            if i > 0,
               ratings[i - 1] > ratings[i] {
                candys[i - 1] = max(candys[i - 1], candys[i] + 1)
            }
        }
        
        return candys.reduce(0, +)
    }
}
