
class Solution {
    
    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        
        var endPoint: Int = graph.count - 1
        
        var res: [[Int]] = []
        
        var path: [Int] = []
        
        func dfs(point: Int) {
            path.append(point)
            defer { path.removeLast() }
            if point == endPoint {
                res.append(path)
                return
            }
            
            for p in graph[point] {
                dfs(point: p)
            }
        }
        
        dfs(point: 0)
        
        return res
    }
}

