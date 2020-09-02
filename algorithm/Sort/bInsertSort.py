def bInserSort(L):
    for i in range(1, len(L)):
        low, high = 0, i - 1
        while low <= high:
            m = (low + high) // 2
            if L[m] < L[i]:
                low = m + 1
            else:
                high = m - 1
        L.insert(high + 1, L.pop(i))


a = [2,9,-2,0,0,2,3,1,9,29,-12,9,10]
bInserSort(a)
print(a)