class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var result: [String] = []
        let n = nums.count
        var start = 0

        while start < n {
            var end = start
            while end + 1 < n && nums[end + 1] == nums[end] + 1 {
                end += 1
            }

            if start == end {
                result.append("\(nums[start])")
            } else {
                result.append("\(nums[start])->\(nums[end])")
            }

            start = end + 1
        }

        return result
    }
}