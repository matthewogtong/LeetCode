class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var uniqueElements = Set<Int>()
    
        for num in nums {
            if uniqueElements.contains(num) {
                return true
            } else {
                uniqueElements.insert(num)
            }
        }
        
        return false
    }
}