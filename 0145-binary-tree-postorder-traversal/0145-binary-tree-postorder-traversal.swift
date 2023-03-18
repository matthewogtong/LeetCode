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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let rootNode = root else { return [] }

        var result: [Int] = []
        var nodeStack: [TreeNode] = [rootNode]

        while !nodeStack.isEmpty {
            let currentNode = nodeStack.popLast()!
            result.insert(currentNode.val, at: 0)

            if let leftNode = currentNode.left {
                nodeStack.append(leftNode)
            }
            if let rightNode = currentNode.right {
                nodeStack.append(rightNode)
            }
        }

        return result
    }
}