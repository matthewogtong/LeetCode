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