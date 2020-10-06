class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None


class TreeNodeSolution:

    def serialize(self, root: TreeNode) -> str:
        ret = "["
        if root:
            queue = Queue()
            queue.enqueue(root)
            while not queue.isEmpty():
                node = queue.dequeue()
                if node:
                    ret += str(node.val)
                    queue.enqueue(node.left)
                    queue.enqueue(node.right)
                else:
                    ret += str("null")
                if not queue.isEmpty():
                    ret += ','
        return ret + "]"

    def deserialize(self, data: str) -> TreeNode:
        """
        解析层序字符串序列，生成二叉树并返回节点
        :param data:
        :return:
        """
        if data == "[]":
            return None
        sequence = list(map(lambda x: int(x) if x != 'null' else None, data[1:-1].split(',')))
        i, length = 0, len(sequence)
        if length == 0:
            return None
        queue = Queue()
        root = TreeNode(sequence[0])
        i += 1
        queue.enqueue(root)
        while i != length:
            node = queue.dequeue()
            if sequence[i] is not None:
                node.left = TreeNode(sequence[i])
                queue.enqueue(node.left)
            if sequence[i + 1] is not None:
                node.right = TreeNode(sequence[i + 1])
                queue.enqueue(node.right)
            i += 2
        return root
