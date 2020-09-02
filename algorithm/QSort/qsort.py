def partition(L, low, high):
    # 关键字(枢轴)取第一位
    pivotkey = L[low]
    # 结束条件：low = high
    while low < high:
        while low < high and L[high] >= pivotkey:
            high -= 1
        # 交换low和high对应的元素
        t = L[low]; L[low] = L[high]; L[high] = t
        while low < high and L[low] <= pivotkey:
            low += 1
        t = L[low]; L[low] = L[high]; L[high] = t
    return low  # 分位点


def qsort(L, low, high):
    if low < high:
        pivotloc = partition(L, low, high)
        partition(L, low, pivotloc - 1)
        partition(L, pivotloc + 1, high)


def qSort(L):
    qsort(L, 0, len(L) - 1)
