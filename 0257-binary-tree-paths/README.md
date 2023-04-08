<h2><a href="https://leetcode.com/problems/binary-tree-paths/">257. Binary Tree Paths</a></h2><h3>Easy</h3><hr><div><p>Given the <code>root</code> of a binary tree, return <em>all root-to-leaf paths in <strong>any order</strong></em>.</p>

<p>A <strong>leaf</strong> is a node with no children.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/12/paths-tree.jpg" style="width: 207px; height: 293px;">
<pre><strong>Input:</strong> root = [1,2,3,null,5]
<strong>Output:</strong> ["1-&gt;2-&gt;5","1-&gt;3"]
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> root = [1]
<strong>Output:</strong> ["1"]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the tree is in the range <code>[1, 100]</code>.</li>
	<li><code>-100 &lt;= Node.val &lt;= 100</code></li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Create a helper function `dfs` that takes the current node, the current path as a string, and a reference to the result array of strings
- If the current node is a leaf node (i.e., it has no children), append the current path to the result array
- If the current node has a left child, call the `dfs` helper function recursively with the left child, and update the current path
- If the current node has a right child, call the `dfs` helper function recursively with the right child, and update the current path

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the number of nodes in the tree. We traverse the tree once

- Space complexity:
$$O(h)$$ - `h` is the height of the tree. This is the maxium amount of space required

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
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        var result: [String] = []
        dfs(root, "", &result)
        return result
    }

    private func dfs(_ node: TreeNode?, _ currentPath: String, _ result: inout [String]) {
        guard let node = node else { return }

        let newPath = currentPath.isEmpty ? "\(node.val)" : "\(currentPath)->\(node.val)"
        if node.left == nil && node.right == nil {
            result.append(newPath)
        }

        dfs(node.left, newPath, &result)
        dfs(node.right, newPath, &result)
    }
}
```
