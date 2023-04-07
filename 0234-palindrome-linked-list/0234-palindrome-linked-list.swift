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