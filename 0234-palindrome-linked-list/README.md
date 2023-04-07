<h2><a href="https://leetcode.com/problems/palindrome-linked-list/">234. Palindrome Linked List</a></h2><h3>Easy</h3><hr><div><p>Given the <code>head</code> of a singly linked list, return <code>true</code><em> if it is a </em><span data-keyword="palindrome-sequence"><em>palindrome</em></span><em> or </em><code>false</code><em> otherwise</em>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/03/pal1linked-list.jpg" style="width: 422px; height: 62px;">
<pre><strong>Input:</strong> head = [1,2,2,1]
<strong>Output:</strong> true
</pre>

<p><strong class="example">Example 2:</strong></p>
<img alt="" src="https://assets.leetcode.com/uploads/2021/03/03/pal2linked-list.jpg" style="width: 182px; height: 62px;">
<pre><strong>Input:</strong> head = [1,2]
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The number of nodes in the list is in the range <code>[1, 10<sup>5</sup>]</code>.</li>
	<li><code>0 &lt;= Node.val &lt;= 9</code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow up:</strong> Could you do it in <code>O(n)</code> time and <code>O(1)</code> space?</div>
</br>

# Solution Details

## Approach
- Traverse through the linked list to find the middle node using the slow and fast pointer technique
- Reverse the second half of the linked list
- Compare the original first half and the reversed second half
- If they are the same, the linked list is a palindrome, otherwise, it is not

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the nuber of nodes in the linked list

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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        var prev: ListNode? = nil
        while slow != nil {
            let nextNode = slow?.next
            slow?.next = prev
            prev = slow
            slow = nextNode
        }
        
        var firstHalf = head
        var secondHalf = prev
        
        while secondHalf != nil {
            if firstHalf?.val != secondHalf?.val {
                return false
            }
            firstHalf = firstHalf?.next
            secondHalf = secondHalf?.next
        }
        
        return true
    }
}
```
