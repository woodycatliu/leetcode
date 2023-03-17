class Solution3 {
    func maxProfit(_ prices: [Int]) -> Int {
        return _maxProfit(prices)
    }
    
    private func _maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        
        var pb = 0
        var buy = -prices[0]
        
        var ps = 0
        var sell = 0
        
        var pc = 0
        var cooldown = 0
        
        for price in prices {
            ps = sell
            pb = buy
            pc = cooldown
            sell = max(ps, pb + price)
            buy = max(pb, pc - price)
            cooldown = max(pc, ps)
        }
        
        return sell
    }
}

