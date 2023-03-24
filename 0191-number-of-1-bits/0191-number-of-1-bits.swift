class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var count = 0
        var num = n

        for _ in 0..<32 {
            if num & 1 == 1 {
                count += 1
            }
            num >>= 1
        }
        return count
    }
}