
class Solution {
    
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        return _leastInterval(tasks, n)
    }
    
    private func _leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        guard n != 0 else {
            return tasks.count
        }
        
        var list = tasks
            .reduce(into: [Character: Int]()) { t, c in
                t[c, default: 0] += 1
            }.map { Tasks<Character>(task: $0.key, count: $0.value) }
            .sorted(by: { $0.count > $1.count })
                
        var res = 0
        
        var index = 0
        
        while !list.isEmpty {
            
            for _ in 0...n {
                
                guard !list.isEmpty else {
                    break
                }
                
                guard list.indices.contains(index) else {
                    res += 1
                    continue
                }
                
                list[index].onTaskComplete()
                res += 1
                if list[index].isEnd {
                    list.remove(at: index)
                    continue
                }
                
                index += 1
            }
            
            index = 0
            list.sort(by: { $0.count > $1.count })
        }
        
        return res
    }
}


private struct Tasks<T> {
    let task: T
    var count: Int
}

extension Tasks {
    var isEnd: Bool {
        return count == .zero
    }
    mutating func onTaskComplete() {
        count -= 1
    }
}
