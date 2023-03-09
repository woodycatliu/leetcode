class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        
        guard n != 0 else { return 1 }
        var answer = myPow(x, abs(n) / 2)
        
        answer = n % 2 == 0 ? answer * answer : answer * answer * x
        return n > 0 ? answer : 1 / answer
    }
}
