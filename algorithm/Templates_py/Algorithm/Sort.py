from random import randint


class Sort:
    def isSorted(self, L: list, cmp) -> bool:
        for i, item in enumerate(L):
            if i != 0 and cmp(item, L[i - 1]):
                return False
        return True

    def testSorting(self, func, cmp):
        """
        测试排序正确性
        """
        print("sorting test for:", func.__name__)
        for i in range(10):
            test = []
            for j in range(1000):
                test.append(randint(-400, 400))
            func(test, cmp)
            if not self.isSorted(test, cmp):
                print("failed example: ", test)
                quit(0)
        print("all pass!")

    def __partition(self, L, low, high, cmp):
        """
        分治
        :param low: 起点
        :param high: 终点
        :param cmp: lambda表达式：返回L[i-1]和L[i]的大小关系
        :return: low分位点
        """
        res = randint(low, high)
        L[low], L[res] = L[res], L[low]
        while low < high:
            while low < high and not cmp(L[high], L[low]):
                high -= 1
            # 交换low和high对应的元素
            L[low], L[high] = L[high], L[low]
            while low < high and not cmp(L[high], L[low]):
                low += 1
            L[low], L[high] = L[high], L[low]
        return low  # 分位点

    def qSort(self, L, cmp, *args):
        """
        快速排序，乱序最佳
        :param L: 待排序list
        :param cmp: lambda表达式：返回L[i-1]和L[i]的大小关系
        :param args: 重载参数
        """
        if len(args) == 2:
            low, high = args[0], args[1]
        else:
            low, high = 0, len(L) - 1
        if low < high:
            pivotloc = self.__partition(L, low, high, cmp)
            self.qSort(L, cmp, low, pivotloc - 1)
            self.qSort(L, cmp, pivotloc + 1, high)

    def bInserSort(self, L, cmp):
        """
        折半插入排序，n小且顺序最佳
        :param L: list
        :param cmp: lambda表达式：返回L[i-1]和L[i]的大小关系
        """
        for i in range(1, len(L)):
            low, high = 0, i - 1
            while low <= high:
                m = (low + high) // 2
                if cmp(L[m], L[i]):
                    low = m + 1
                else:
                    high = m - 1
            L.insert(high + 1, L.pop(i))

    def __range_divide(self, beg, end, divisor):
        value = beg
        # end也算到其中
        while value >= end:
            yield value
            value //= divisor

    def shellSort(self, L, cmp):
        """
        希尔排序
        :param L:
        :param cmp:
        :return:
        """
        n = len(L)
        for dk in self.__range_divide(n // 2, 1, 2):
            for i in range(dk, n):
                key, j = L[i], i - dk
                while j >= 0 and cmp(key, L[j]):
                    L[j + dk] = L[j]
                    j -= dk
                L[j + dk] = key

    def __merge(self, L, cmp, beg, seg, end):
        B = L.copy()
        low, high = beg, seg + 1
        # seg是low的右边界
        while low != seg + 1 or high != end + 1:
            if low == seg + 1:
                while high != end + 1:
                    L[low + high - seg - 1] = B[high]
                    high += 1
            elif high == end + 1:
                while low != seg + 1:
                    L[low + high - seg - 1] = B[low]
                    low += 1
            elif not cmp(B[high], B[low]):
                L[low + high - seg - 1] = B[low]
                low += 1
            else:
                L[low + high - seg - 1] = B[high]
                high += 1

    def mergeSort(self, L, cmp, *args):
        """
        归并排序，n大且要求稳定最佳
        :param cmp:
        :param L:
        :param args:
        :return:
        """
        if len(args) != 0:
            low, high = args[0], args[1]
        else:
            low, high = 0, len(L) - 1
        if low < high:
            mid = (low + high) // 2
            self.mergeSort(L, cmp, low, mid)
            self.mergeSort(L, cmp, mid + 1, high)
            self.__merge(L, cmp, low, mid, high)
