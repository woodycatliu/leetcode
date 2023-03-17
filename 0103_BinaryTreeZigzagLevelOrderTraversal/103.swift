
class Solution {
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        return _zigzagLevelOrder(root)
    }
    
    private func _zigzagLevelOrder(_ root: TreeNode) -> [[Int]] {
        var nodes = [root]
        var levels: [[Int]] = []
        var toggle = false
        
        while !nodes.isEmpty {
            var temp: [Int] = []
            print(nodes.map { $0.val })
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
            temp = toggle ? temp.reversed() : temp
            
            toggle.toggle()
            levels.append(temp)
        }
    
        return levels
    }
}
