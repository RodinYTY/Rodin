import random
from qSort import qSort
from bInsertSort import bInserSort
from shellSort import shellSort


def isAscending(L: list) -> bool:
    for i, item in enumerate(L):
        if i != 0 and item < L[i - 1]:
            return False
    return True


def testSorting(func):
    print("sorting test for:", func.__name__)
    for i in range(10):
        test = []
        for j in range(1000):
            test.append(random.randint(-400, 400))
        func(test)
        if not isAscending(test):
            print("failed example: ", test)
            quit(0)
    print("all pass!")


if __name__ == '__main__':
    testSorting(qSort)
