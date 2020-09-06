def partition(L, low, high):
    # 关键字(枢轴)取第一位
    # pivotkey = L[low]
    # 结束条件：low = high
    while low < high:
        while low < high and L[high] >= L[low]:
            high -= 1
        # 交换low和high对应的元素
        L[low], L[high] = L[high], L[low]
        while low < high and L[low] <= L[high]:
            low += 1
        L[low], L[high] = L[high], L[low]
    return low  # 分位点


def qSort(L, *args):
    # args为递归参数low和high
    if len(args) == 2:
        low, high = args[0], args[1]
    else:
        low, high = 0, len(L) - 1
    if low < high:
        pivotloc = partition(L, low, high)
        qSort(L, low, pivotloc - 1)
        qSort(L, pivotloc + 1, high)
