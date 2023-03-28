<h2><a href="https://leetcode.com/problems/reverse-linked-list/">206. Reverse Linked List</a></h2><h3>Easy</h3><hr><div><p>Given the head of a singly linked list, reverse the list, and return the reversed list.</p>
</br>

# Solution Details

## Approach
1. Create a variable `previousNode` to keep track of the previous node during iteration, and initialize it to `nil`
2. Create a variable `currentNode` to store the current node during iteration, and initialize it with the `head` of the linked list
3. Loop through the list until the `currentNode` is `nil`
    - Create a temporary variable `nextNode` to store the next node in the list
    - Set the next node of the `currentNode` to the `previousNode`
    - Update the `previousNode` to the `currentNode`
    - Move the `currentNode` to the `nextNode`
4. When the iteration is complete, return the `previousNode` as the new head of the reversed list

## Complexity
- Time complexity:
$$O(n)$$ - where `n` is the number of nodes in the list, as we need to traverse the entire list once

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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var previousNode: ListNode? = nil
        var currentNode = head

        while currentNode != nil {
            let nextNode = currentNode?.next
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = nextNode
        }

        return previousNode
    }
}
```
