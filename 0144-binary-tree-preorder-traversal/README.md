<h2><a href="https://leetcode.com/problems/binary-tree-preorder-traversal/">144. Binary Tree Preorder Traversal</a></h2><h3>Easy</h3><hr><div><p>Given <code>head</code>the root of a binary tree, return the preorder traversal of its nodes' values.</p>
</br>

# Solution Details

## Approach
- Create a helper function, `preorderTraversalHelper`, which accepts a TreeNode and an inout array of Ints to store the preorder traversal result
- If the given TreeNode is not `nil`, append its value to the result array, and then call the helper function recursively for its left and right children
- Call `preorderTraversalHelper` with the root node and an empty array, and return the array

## Complexity
- Time complexity:
$$O(n)$$

- Space complexity:
$$O(n)$$

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
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var result: [Int] = []
        preorderTraversalHelper(root, &result)
        return result
    }
    
    func preorderTraversalHelper(_ node: TreeNode?, _ result: inout [Int]) {
        if let currentNode = node {
            result.append(currentNode.val)
            preorderTraversalHelper(currentNode.left, &result)
            preorderTraversalHelper(currentNode.right, &result)
        }
    }
}
```
