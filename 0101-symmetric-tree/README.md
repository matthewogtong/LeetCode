<h2><a href="https://leetcode.com/problems/symmetric-tree/">101. Symmetric Tree</a></h2><h3>Easy</h3><hr><div><p>Given the <code>root</code> of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).</p>

<p>Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.</p>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in both trees is in the range <code>[1, 1000]</code>.</li>
	<li><code>-100 &lt;= Node.val &lt;= 100</code></li>
</ul>
</div>

</br>

# Solution Details

## Approach
- Define a helper function that takes two nodes as input and returns `true` if they are mirrors of each other.
- If both nodes are `nil`, return `true`.
- If either node is `nil`, return `false`.
- If the values of both nodes are not equal, return `false`.
- Recursively check if the left subtree of the first node is a mirror of the right subtree of the second node, and vice versa.

## Complexity
- Time complexity:
$$O(n)$$ - We visit each node exactly once

- Space complexity:
$$O(h)$$ - The space required by the call stack is proporational to the height of the tree.

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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isMirror(root, root)
    }

    func isMirror(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        
        if p == nil || q == nil {
            return false
        }
        
        if p!.val != q!.val {
            return false
        }
        
        return isMirror(p?.left, q?.right) && isMirror(p?.right, q?.left)
    }
}
```
