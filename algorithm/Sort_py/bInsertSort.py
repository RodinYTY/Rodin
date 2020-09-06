def bInserSort(L):
    """
    折半插入排序
    :param L: list
    """
    for i in range(1, len(L)):
        low, high = 0, i - 1
        while low <= high:
            m = (low + high) // 2
            if L[m] < L[i]:
                low = m + 1
            else:
                high = m - 1
        L.insert(high + 1, L.pop(i))
