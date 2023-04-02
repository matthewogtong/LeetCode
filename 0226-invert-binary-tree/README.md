<h2><a href="https://leetcode.com/problems/invert-binary-tree/">226. Invert Binary Tree</a></h2><h3>Easy</h3><hr><div><p>Given the <code>root</code> of a binary tree, invert the tree, and return <em>its root</em>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/14/invert1-tree.jpg" style="width: 500px; height: 165px;">
<pre><strong>Input:</strong> root = [4,2,7,1,3,6,9]
<strong>Output:</strong> [4,7,2,9,6,3,1]
</pre>

<p><strong class="example">Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/14/invert2-tree.jpg" style="width: 500px; height: 120px;">
<pre><strong>Input:</strong> root = [2,1,3]
<strong>Output:</strong> [2,3,1]
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> root = []
<strong>Output:</strong> []
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[0, 100]</code>.</li>
	<li><code>-100 &lt;= Node.val &lt;= 100</code></li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Create a function called `invertTree` which accepts a binary tree node as its input parameter
- Check if the input node is `nil`, which means it's an empty tree or a leaf node, and return the input node as is
- Recursively call the `invertTree` function for the left and right child of the input node
- Swap the left and right children of the input node

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the number of nodes in the tree

- Space complexity:
$$O(h)$$ - `h` is the height of the tree, as it represents the maximum number of function calls stored on the call stack

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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        
        let left = invertTree(root?.left)
        let right = invertTree(root?.right)
        
        root?.left = right
        root?.right = left
        
        return root
    }
}
```
