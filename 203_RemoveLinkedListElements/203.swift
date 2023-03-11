
class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        return _removeElements(head, val)
    }
    
    private func _removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        guard let head = head else { return nil }
        guard head.val != val else {
            return _removeElements(head.next, val)
        }
        head.next = _removeElements(head.next, val)
        return head
    }
}

