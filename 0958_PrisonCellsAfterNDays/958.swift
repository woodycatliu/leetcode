class Solution {
    
    func prisonAfterNDays(_ cells: [Int], _ n: Int) -> [Int] {
        guard n >= 14 else {
            return _prisonAfterNDays(cells, n).last!
        }
        let pool = _prisonAfterNDays(cells, 14)
        
        return pool[(n - 14 - 1) % 14]
    }
    
    func _prisonAfterNDays(_ cells: [Int], _ n: Int) -> [[Int]] {
        var res: [[Int]] = []
        var cells = cells
        var n = n
        var previous: Int? = nil
        
        while n >= 1 {
            for i in cells.indices {
                let cur = cells[safe: i]
                defer { previous = cur }
                guard i != 0 && i != 7 else {
                    cells[i] = 0
                    continue
                }
                cells[i] = previous == cells[safe: i + 1] ? 1 : 0
            }
            n -= 1
        }
        return res
    }
}

extension Array {
    subscript(safe index: Int) -> Element? {
        guard indices.contains(index) else { return nil }
        return self[index]
    }
}

