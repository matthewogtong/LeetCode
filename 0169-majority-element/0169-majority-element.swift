class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate: Int?
        var count = 0
        
        for num in nums {
            if count == 0 {
                candidate = num
            }
            count += (num == candidate) ? 1 : -1
        }
        
        return candidate!
    }
}