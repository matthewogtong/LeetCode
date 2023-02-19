<h2><a href="https://leetcode.com/problems/merge-two-sorted-lists/">21. Merge Two Sorted Lists</a></h2><h3>Easy</h3><hr><div><p>You are given the heads of two sorted linked lists <code>list1</code> and <code>list2</code>.</p>

<p>Merge the two lists in a one <strong>sorted</strong> list. The list should be made by splicing together the nodes of the first two lists.</p>

<p>Return <em>the head of the merged linked list</em>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2020/10/03/merge_ex1.jpg" style="width: 662px; height: 302px;">
<pre><strong>Input:</strong> list1 = [1,2,4], list2 = [1,3,4]
<strong>Output:</strong> [1,1,2,3,4,4]
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> list1 = [], list2 = []
<strong>Output:</strong> []
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> list1 = [], list2 = [0]
<strong>Output:</strong> [0]
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in both lists is in the range <code>[0, 50]</code>.</li>
	<li><code>-100 &lt;= Node.val &lt;= 100</code></li>
	<li>Both <code>list1</code> and <code>list2</code> are sorted in <strong>non-decreasing</strong> order.</li>
</ul>
</div>
<br/>

# Solution Details

## Approach
- The base case is when either `list1` or `list2` is `nil`, in which case we return the other list.
- Compare the heads of `list1` and `list2`. Whichever is smaller becomes the head of the merged list.
- Recursively call the `mergeTwoLists` function on the rest of `list1` and `list2`, starting from the next node of the list with the smaller head.
- Return the merged list.

## Complexity
- Time complexity:
$$O(n + m)$$: where `n` and `m` are the lengths of the input lists

- Space complexity:
$$O(n + m)$$

## Code
```
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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard let list1 = list1 else {
            return list2
        }
        guard let list2 = list2 else {
            return list1
        }
        
        var mergedList: ListNode?
        
        if list1.val < list2.val {
            mergedList = list1
            mergedList?.next = mergeTwoLists(list1.next, list2)
        } else {
            mergedList = list2
            mergedList?.next = mergeTwoLists(list1, list2.next)
        }
        
        return mergedList
    }
}
```
