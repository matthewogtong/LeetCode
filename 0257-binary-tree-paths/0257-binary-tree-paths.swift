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