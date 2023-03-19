/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        var pointerA = headA
        var pointerB = headB

        while pointerA !== pointerB {
            pointerA = (pointerA == nil) ? headB : pointerA?.next
            pointerB = (pointerB == nil) ? headA : pointerB?.next
        }

        return pointerA
    }
}