class Solution {
    func reverseWords(_ s: String) -> String {
       return s.split(separator: " ").reversed().joined(separator: " ")
    }
}
