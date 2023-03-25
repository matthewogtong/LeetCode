class Solution {
    func isHappy(_ n: Int) -> Bool {
        func getSumOfSquares(_ num: Int) -> Int {
            var sum = 0
            var number = num
            
            while number > 0 {
                let digit = number % 10
                sum += digit * digit
                number /= 10
            }
            
            return sum
        }
        
        var tortoise = n
        var hare = getSumOfSquares(n)
        
        while hare != 1 && hare != tortoise {
            tortoise = getSumOfSquares(tortoise)
            hare = getSumOfSquares(getSumOfSquares(hare))
        }
        
        return hare == 1
    }
}