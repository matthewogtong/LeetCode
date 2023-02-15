class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        } else if x == 0 {
            return true
        } else {
            var reverse = 0
            var original = x
            var num = x
            while num > 0 {
                let digit = num % 10
                reverse = reverse * 10 + digit
                num = num / 10
            }
            return original == reverse
        }
    }
}