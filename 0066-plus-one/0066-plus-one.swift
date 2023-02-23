class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        var carry = 1
        
        for i in (0..<digits.count).reversed() {
            let sum = digits[i] + carry
            if sum <= 9 {
                result[i] = sum
                return result
            } else {
                result[i] = 0
                carry = 1
            }
        }
        
        result.insert(1, at: 0)
        return result
    }
}