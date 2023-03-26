<h2><a href="https://leetcode.com/problems/remove-linked-list-elements/">203. Remove Linked List Elements</a></h2><h3>Easy</h3><hr><div><p>Given the <code>head</code> of a linked list and an integer <code>val</code>, remove all the nodes of the linked list that has <code>Node.val == val</code>, and return <em>the new head</em>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/06/removelinked-list.jpg" style="width: 500px; height: 142px;">
<pre><strong>Input:</strong> head = [1,2,6,3,4,5,6], val = 6
<strong>Output:</strong> [1,2,3,4,5]
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> head = [], val = 1
<strong>Output:</strong> []
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> head = [7,7,7,7], val = 7
<strong>Output:</strong> []
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the list is in the range <code>[0, 10<sup>4</sup>]</code>.</li>
	<li><code>1 &lt;= Node.val &lt;= 50</code></li>
	<li><code>0 &lt;= val &lt;= 50</code></li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Create a dummy node to serve as the new head of the linked list
- Initialize two pointers, `prev` and `curr`, with the dummy node and the actual head of the linked list, respectively
- Iterate through the linked list until the `curr` pointer becomes `nil`.
- If the `curr` node's value is equal to `val`, update the `prev` node's next pointer to skip the `curr` node
- If the `curr` node's value is not equal to `val`, update the `prev` pointer to the `curr` node
- In both cases, move the `curr` pointer to the next node.
Return the next pointer of the dummy node as the new head of the linked list

## Complexity
- Time complexity:
$$O(n)$$ - where `n` is the number of nodes in the linked list, as we traverse the entire linked list once

- Space complexity:
$$O(1)$$

## Code
```swift
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let dummyNode = ListNode(0)
        dummyNode.next = head
        var prev: ListNode? = dummyNode
        var curr: ListNode? = head

        while curr != nil {
            if curr!.val == val {
                prev?.next = curr?.next
            } else {
                prev = curr
            }
            curr = curr?.next
        }

        return dummyNode.next
    }
}
```
