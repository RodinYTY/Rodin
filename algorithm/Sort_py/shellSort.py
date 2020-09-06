def range_divide(beg, end, divisor):
    value = beg
    # end也算到其中
    while value >= end:
        yield value
        value //= divisor


def shellSort(L):
    n = len(L)
    for dk in range_divide(n // 2, 1, 2):
        for i in range(dk, n):
            key, j = L[i], i - dk
            while j >= 0 and key < L[j]:
                L[j + dk] = L[j]
                j -= dk
            L[j + dk] = key
