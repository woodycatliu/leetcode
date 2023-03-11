
class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let words = Array(word)

        for i in board.indices {
            for j in board[i].indices {
                var board = board
                if DFS(&board, words: words, x: j, y: i) {
                    return true
                }
            }
        }
        
        return false
    }
    
    private func DFS(_ board: inout [[Character]], words: [Character], x: Int, y: Int) -> Bool {
        guard !words.isEmpty else { return true }
        guard board.indices.contains(y) && board[y].indices.contains(x) else {
            return false
        }
        
        var words = words
                
        let w = words.removeFirst()
               
        guard board[y][x] == w else { return false }
        board[y][x] = Character("0")
        defer { board[y][x] = w }
        
        guard DFS(&board, words: words, x: x + 1, y: y) ||
              DFS(&board, words: words, x: x - 1, y: y) ||
              DFS(&board, words: words, x: x, y: y + 1) ||
              DFS(&board, words: words, x: x, y: y - 1) else { return false }
                
        return true
    }
    
}
