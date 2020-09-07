def merge(L: list, beg, seg, end):
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
        elif high == end + 1 or B[low] <= B[high]:
            L[low + high - seg - 1] = B[low]
            low += 1
        else:
            L[low + high - seg - 1] = B[high]
            high += 1


def mergeSort(L, *args):
    if len(args) != 0:
        low, high = args[0], args[1]
    else:
        low, high = 0, len(L) - 1
    if low < high:
        mid = (low + high) // 2
        mergeSort(L, low, mid)
        mergeSort(L, mid + 1, high)
        merge(L, low, mid, high)


if __name__ == '__main__':
    a= [2,9,6,3,3]
    mergeSort(a)
    print(a)
