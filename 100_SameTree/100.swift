
class Solution {
   func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
       return _isSameTree(p, q)
   }
   
   private func _isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
       
       if p == nil && q == nil {
           return true
       }

       guard let p = p,
             let q = q,
             p.val == q.val  else { return false }
       return _isSameTree(p.left, q.left) && _isSameTree(p.right, q.right)
   }
}
