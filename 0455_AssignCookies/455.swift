class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var res: Int = 0
        let g = g.sorted()
        let s = s.sorted()
        var l = 0
        var r = 0
       
        let gs = g.count
        let ss = s.count

        while l < gs && r < ss {
            defer { r += 1 }
            guard g[l] <= s[r] else { continue }
            res += 1
            l += 1
        }

        return res
    }
}

