class Solution {
    func climbStairs(_ n: Int) -> Int {
        var a = 1
        var b = 2
        
        if n == 1 { return a }
        if n == 2 { return b }
        
        for i in 2..<n {
            let tmp = b
            b = a + b
            a = tmp
        }
        
        return b
    }
}