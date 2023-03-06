<h2><a href="https://leetcode.com/problems/balanced-binary-tree/">110. Balanced Binary Tree</a></h2><h3>Easy</h3><hr><div><p>Given a binary tree, determine if it is <span data-keyword="height-balanced"><strong>height-balanced</strong></span>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2020/10/06/balance_1.jpg" style="width: 342px; height: 221px;">
<pre><strong>Input:</strong> root = [3,9,20,null,null,15,7]
<strong>Output:</strong> true
</pre>

<p><strong class="example">Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2020/10/06/balance_2.jpg" style="width: 452px; height: 301px;">
<pre><strong>Input:</strong> root = [1,2,2,3,3,null,null,4,4]
<strong>Output:</strong> false
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> root = []
<strong>Output:</strong> true
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[0, 5000]</code>.</li>
	<li><code>-10<sup>4</sup> &lt;= Node.val &lt;= 10<sup>4</sup></code></li>
</ul>
</div>

</br>

# Solution Details

## Approach
- Define a helper function that takes a node as input and returns the height of the subtree rooted at that node.
- If the node is `nil`, return `0`.
- Recursively compute the height of the `left` and `right` subtrees of the node.
- If the difference between their heights is greater than one, return `-1` to indicate that the tree is not height-balanced.
- Otherwise, return the maximum of the heights of the two subtrees plus one.

## Complexity
- Time complexity:
$$O(n)$$ - We visit each node exactly once
- Space complexity:
$$O(h)$$ - The space required by the call stack is proportional to the height of the tree

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
    func isBalanced(_ root: TreeNode?) -> Bool {
        return isBalancedHelper(root) != -1
    }

    func isBalancedHelper(_ node: TreeNode?) -> Int {
        if node == nil {
            return 0
        }
        
        let leftHeight = isBalancedHelper(node?.left)
        if leftHeight == -1 {
            return -1
        }
        
        let rightHeight = isBalancedHelper(node?.right)
        if rightHeight == -1 {
            return -1
        }
        
        if abs(leftHeight - rightHeight) > 1 {
            return -1
        }
        
        return max(leftHeight, rightHeight) + 1
    }
}
```
