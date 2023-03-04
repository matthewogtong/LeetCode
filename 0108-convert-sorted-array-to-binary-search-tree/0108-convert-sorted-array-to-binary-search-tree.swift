/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        if nums.isEmpty {
            return nil
        }
        
        let midIndex = nums.count / 2
        let root = TreeNode(nums[midIndex])
        
        root.left = sortedArrayToBST(Array(nums[..<midIndex]))
        root.right = sortedArrayToBST(Array(nums[(midIndex+1)...]))
        
        return root
    }
}