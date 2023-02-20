class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else {
            return nums.count
        }

        var k = 1

        for i in 1..<nums.count {
            if nums[i] != nums[k - 1] {
                nums[k] = nums[i]
                k += 1
            }
        }
        return k
    }
}