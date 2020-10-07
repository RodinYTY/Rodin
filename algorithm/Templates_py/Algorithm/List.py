from typing import *


class ListSolution:
    def reverseList(self, L: list, start: int, end: int) -> None:
        """
        反转链表
        :param start: 起点index
        :param end: 终点index(包含)
        :return: 原地修改
        """
        if end - start < 1:
            return
        while start < end:
            L[start], L[end] = L[end], L[start]
            start += 1
            end -= 1
