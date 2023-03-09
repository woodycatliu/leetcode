
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var digits = digits
        var currentIndex = digits.count - 1
        
        while currentIndex>=0 && digits[currentIndex] == 9 {
            digits[currentIndex] = 0
            currentIndex -= 1
        }
        
        if currentIndex >= 0 {
            digits[currentIndex] += 1
        } else {
            digits.insert(1, at: 0)
        }
        
        return digits
    }
}
