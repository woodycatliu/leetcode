
class Solution {
    func flatten(_ head: Node?) -> Node? {
        return head?.flatten()
    }
}

public extension Node {
    func flatten() -> Node {
        if let child = child?.flatten() {
            let next = next
            self.next = child
            child.prev = self
            self.child = nil
            child.append(next)
        } else {
            self.next?.flatten()
        }
        return self
    }
    
    func append(_ node: Node?) -> Node {
        if let next = next {
            next.append(node)
        } else {
            next = node
            node?.prev = self
        }
        return self
    }
    
}

