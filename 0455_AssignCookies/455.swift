class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var res: Int = 0
        let g = g.sorted()
        let s = s.sorted()
        var r = 0
       
        let gs = g.count
        let ss = s.count

        while res < gs && r < ss {
            defer { r += 1 }
            guard g[res] <= s[r] else { continue }
            res += 1
        }

        return res
    }
}

