class Solution {
    func reverseBits(_ n: Int) -> Int {
        var result = 0
        var input = n
        for _ in 0..<32 {
            result <<= 1
            result |= input & 1
            input >>= 1
        }
        return result
    }
}