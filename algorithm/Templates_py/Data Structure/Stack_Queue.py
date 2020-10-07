class Queue:
    def __init__(self):
        self.items = []

    def isEmpty(self):
        return self.items == []

    def enqueue(self, item):
        self.items.insert(0, item)

    def dequeue(self):
        return self.items.pop()

    # @optional
    def size(self):
        return len(self.items)

    def head(self):
        """
        出队的方向
        """
        return self.items[-1]

    def rear(self):
        """
        进队的方向
        """
        return self.items[0]


class Stack:
    def __init__(self):
        self.items = []

    def isEmpty(self):
        return self.items == []

    def push(self, item):
        self.items.append(item)

    def pop(self):
        return self.items.pop()

    # @optional
    def size(self):
        return len(self.items)

    def peek(self):
        return self.items[-1]
