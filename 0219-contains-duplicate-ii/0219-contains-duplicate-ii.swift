class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var valueToIndex: [Int: Int] = [:]

        for (index, value) in nums.enumerated() {
            if let lastIndex = valueToIndex[value], index - lastIndex <= k {
                return true
            }
            valueToIndex[value] = index
        }

        return false
    }
}