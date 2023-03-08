<h2><a href="https://leetcode.com/problems/path-sum/">112. Path Sum</a></h2><h3>Easy</h3><hr><div><p>Given the root of a binary tree and an integer targetSum, return true if the tree has a root-to-leaf path such that adding up all the values along the path equals targetSum.</p>

<p><strong>Note:</strong>&nbsp;A leaf is a node with no children.</p>

# Solution Details

## Approach
- If the node is `nil`, return `false`.
- If the node is a leaf and the current sum plus the value of the node equals the target sum, return `true`.
- Recursively check if there is a root-to-leaf path with the target sum in the left and right subtrees of the node.
- Return `true` if either of the subtrees has a root-to-leaf path with the target sum.

## Complexity
- Time complexity:
$$O(n)$$

- Space complexity:
$$O(h)$$

## Code
```swift
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
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let node = root else {
            return false
        }
        
        if node.left == nil && node.right == nil && node.val == targetSum {
            return true
        }
        
        return hasPathSum(node.left, targetSum - node.val) || hasPathSum(node.right, targetSum - node.val)
    }
}
```
