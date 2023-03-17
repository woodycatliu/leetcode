class Solution {
    enum Visited {
        case none
        case did
        case being
    }
    
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        return _findOrder(numCourses, prerequisites)
    }
    
    func _findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
        
        var graph = prerequisites.graph(num: numCourses)
        
        var res: [Int] = []
        
        var visiteds = Array(repeating: Visited.none, count: numCourses)
        
        func dfs(_ n: Int) -> Bool {
            if visiteds[n] == .did {
                return true
            } else if visiteds[n] == .being {
                return false
            }
            
            visiteds[n] = .being
            
            for i in graph[n] {
                if !dfs(i) {
                    return false
                }
            }
            visiteds[n] = .did
            res.append(n)
            return true
        }
        
        for i in 0..<numCourses {
            if !dfs(i) {
                return []
            }
        }
        
        return res.reversed()
    }
    
}

extension Array where Element == Array<Int> {
    
    func graph(num: Int) -> [[Int]] {
        var graph = Array(repeating: [], count: num)
        for arr in self {
            graph[arr[1]].append(arr[0])
        }
        return graph
    }
}
