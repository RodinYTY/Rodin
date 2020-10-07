class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None


class ListNodeSolution:
    def serialize(self, head: ListNode) -> str:
        ret = "["
        while head:
            ret += str(head.val)
            head = head.next
            if head:
                ret += ','
        return ret + "]"

    def deserialize(self, data: str) -> ListNode:
        """
        解析链表序列，生成链表返回其头结点
        """
        if data == "[]":
            return None
        sequence = [int(x.strip()) for x in data[1:-1].split(',')]
        i, node = 1, ListNode(sequence[0])
        head = node
        while i != len(sequence):
            node.next = ListNode(sequence[i])
            node = node.next
            i += 1
        return head

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
