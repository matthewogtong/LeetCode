/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 1
        var right = n
        
        while left < right {
            let middle = left + (right - left) / 2
            if isBadVersion(middle) {
                right = middle
            } else {
                left = middle + 1
            }
        }
        
        return left
    }
}