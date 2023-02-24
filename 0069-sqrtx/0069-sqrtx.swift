class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 0 || x == 1 {
            return x
        }
    
        var left = 0
        var right = x
        
        while left <= right {
            let mid = left + (right - left) / 2
            let square = mid * mid
            
            if square == x {
                return mid
            } else if square < x {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return right
    }
}