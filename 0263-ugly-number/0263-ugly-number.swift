class Solution {
    func isUgly(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        
        var num = n
        let primeFactors = [2, 3, 5]
        
        for factor in primeFactors {
            while num % factor == 0 {
                num /= factor
            }
        }
        
        return num == 1
    }
}