class Solution {
    
    struct NodePosition {
        var node: TreeNode
        var index: Int
    }
    
    var queue: [NodePosition] = []

    func widthOfBinaryTree(_ root: TreeNode?) -> Int {
        return  _widthOfBinaryTree(root)
    }

    private func _widthOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        queue = [NodePosition(node: root, index: 0)]

        var res: Int = 1
        var level = 1
        while !queue.isEmpty {
            level += 1
            var count = queue.count
            
            while count > 0 {
                count -= 1
                let np = queue.removeFirst()
                
                let i = np.index
                
                if let left = np.node.left {
                    queue.append(NodePosition(node: left, index: i*2))
                }

                if let right = np.node.right {
                    queue.append(NodePosition(node: right, index: i*2 + 1))
                }
            }
            
            if level > 62 {
                levelReduction(level: &level)
            }
            
            if queue.count >= 2 {
                
                let n1 = queue.first!
                let n2 = queue.last!
                
                res = max(res, n2.index - n1.index + 1)
            }
            
        }

        return res
    }

    private func levelReduction(level: inout Int) {
        var np = queue.removeFirst()
        
        queue = queue.map {
            let index = $0.index - np.index
            return NodePosition(node: $0.node, index: index)
        }
        
        np.index = 0
        queue.insert(np, at: 0)
        
        level = 0
        
    }

}

