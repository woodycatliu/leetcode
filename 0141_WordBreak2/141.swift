
class Solution {
    var wordDict: [String] = []
    
    func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
        self.wordDict = wordDict
        return _wordBreak(s: s.dropFirst(0))
    }
    
    private func _wordBreak(s: Substring) -> [String] {
        return wordDict.filter(s.starts(with:)).flatMap { str -> [String] in
            let clips = s.dropFirst(str.count)
            return clips.isEmpty ? [str] : _wordBreak(s: clips).map { str + " " + $0}
        }
    }
}
