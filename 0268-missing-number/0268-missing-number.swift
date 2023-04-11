class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var missingNumber = nums.count
        for (index, num) in nums.enumerated() {
            missingNumber ^= index ^ num
        }
        return missingNumber
    }
}