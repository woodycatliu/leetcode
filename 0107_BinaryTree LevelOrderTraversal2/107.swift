class Solution {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        return _levelOrderBottom(root)
    }
    
    fileprivate func _levelOrderBottom(_ root: TreeNode) -> [[Int]] {
        var nodes = [root]
        var levels: [[Int]] = []
        
        while !nodes.isEmpty {
            var temp: [Int] = []
            for _ in nodes.indices {
                let node = nodes.removeFirst()
                temp.append(node.val)
                
                if let l = node.left {
                    nodes.append(l)
                }
                
                if let r = node.right {
                    nodes.append(r)
                }
            }
            levels.insert(temp, at: 0)
        }
        
        return levels
    }
}
