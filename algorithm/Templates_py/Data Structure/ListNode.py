class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None


class ListNodeSolution:
    def reverseList(self, head: ListNode) -> ListNode:
        """
        反转链表
        :param head: 头结点
        :return: 反转后链表的头节点
        """
        newtail = None
        while head:
            tmp = head.next
            head.next = newtail
            newtail = head
            head = tmp
        return newtail
