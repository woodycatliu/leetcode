
class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        return _eraseOverlapIntervals(intervals)
    }
    
    fileprivate func _eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        guard !intervals.isEmpty else { return 0 }
        var intervals = intervals.sorted { a, b in
            a[1] < b[1]
        }
        var removed = 0, prev = intervals.removeFirst()[1];
        
        for i in intervals {
            if i[0] < prev {
                removed += 1
            } else {
                prev = i[1]
            }
        }
        return removed
    }
}
