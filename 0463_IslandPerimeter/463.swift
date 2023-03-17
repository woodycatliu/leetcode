class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        return _islandPerimeter(grid)
    }
    
    private func _islandPerimeter(_ grid: [[Int]]) -> Int  {
        
        var count = 0
        
        for i in grid.indices {
            for j in grid[0].indices {
                
                if (grid[i][j] == 0) {
                    continue
                }
                
                if (j == 0 || grid[i][j - 1] == 0) {
                    count += 1
                }
                
                if (j == grid[0].count - 1 || grid[i][j + 1] == 0) {
                    count += 1
                }
                
                if (i == 0 || grid[i - 1][j] == 0) {
                    count += 1
                }
                
                if (i == grid.count - 1 || grid[i + 1][j] == 0) {
                    count += 1
                }
                
            }
        }
        
        return count
    }
}

