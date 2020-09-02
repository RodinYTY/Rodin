from qSort import qSort
from bInsertSort import bInserSort

if __name__ == '__main__':
    a = [49, 38, 65, 97, 76, 13, 27, 48, 49, 92, 29, 40, 0, -19]
    qSort(a)
    print(' '.join(str(i) for i in a))
    bInserSort(a)
    print(' '.join(str(i) for i in a))
