class Solution {
    
    var map: [Int: Int] = [:]
    
    var inorder: [Int] = []
    
    var postorder: [Int] = []
    
    
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        self.inorder = inorder
        self.map = inorder.enumeratedDictonary()
        self.postorder = postorder
        return _buildTree(ls: 0, le: postorder.endIndex - 1, rs: 0, re: postorder.endIndex - 1)
    }
    
    private func _buildTree(ls: Int, le: Int, rs: Int, re: Int) -> TreeNode? {
        
        guard le >= ls && re >= rs else { return nil }
                        
        let mid = map[postorder[re]]!
        
        let td = TreeNode(postorder[re])
        
        td.left = _buildTree(ls: ls, le: mid - 1, rs: rs, re: rs + mid - ls - 1)
        
        td.right = _buildTree(ls: mid + 1, le: le, rs: rs + mid - ls, re: re - 1)
        
        return td
    }
    
}

extension Sequence {
    public func enumeratedDictonary() -> [Iterator.Element: Int] where Iterator.Element: Hashable {
        var dict: [Iterator.Element: Int] = [:]
        
        for (i, e) in enumerated() {
            dict[e] = i
        }
        
        return dict
    }
}
