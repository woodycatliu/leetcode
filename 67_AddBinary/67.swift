
class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let a = Array(a)
        let b = Array(b)
        var l = a.count - 1
        var r = b.count - 1
        var ans = l > r ? a : b
        var i = max(l, r)
        var carry = false
        
        while r >= 0 && l >= 0 {
            
            var curCarry = a[l] == "1" && b[r] == "1"
            
            ans[i] = curCarry ? "0" : (a[l] == "1" ? a[l] : b[r])
            
            let curS = ans[i]
            
            ans[i] = curS == "1" && carry ? "0" : ((carry) ? "1" : curS)
            
            carry = (curS == "1" && carry) || curCarry

            l -= 1
            r -= 1
            i -= 1
        }
        
        while carry {
            
            if i < 0 {
                ans.insert("1", at: 0)
                carry = false
            } else if ans[i] == "1" {
                
                ans[i] = "0"
                i -= 1
                carry = true
        
            } else {
                ans[i] = "1"
                carry = false
            }
                    
        }
        
        return String(ans)
    }
}
