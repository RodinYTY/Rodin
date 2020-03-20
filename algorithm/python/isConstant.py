# *Copyright: Copyright (c) 2020
# *Created on 2020-3-21
# *Author: Rodin_YTY
# *Version 1.0
# *Title: isConstant


# 由三部分组成：符号部分sign 小数部分value 指数部分index
# 分三部分判断

def isNum(s: str) ->bool:  # main function
    if s == '' or s == '+' or s == '-': return False
    if s[0] =='+' or s[0] == '-':
        s = s[1:]
    # discard '0'
    while s and s[0] == '0':
        s = s[1:]
    s = valueOK(s)
    if s is not False and indexOK(s):
        return True
    else:
        return False


def valueOK(s: str):
    end = len(s)
    for i in range(len(s)):
        if s[i] == 'e' or s[i] == 'E':
            end = i
            break
    s1 = s[:end]
    # only consists of 1 x '.'
    # valid: .233 2.33 233.
    pointCount = 0
    res = True
    for c in s1:
        if c == '.':
            if pointCount == 0:
                pointCount += 1
            else:
                res = False
                break
        elif c < '0' or c > '9':
            res = False
    if res:
        return s[end:]
    else:
        return False


def indexOK(s: str):
    if s == '': return True
    if s == 'e': return False
    # e-5 e5 e+5 x e e+1.1 e2.2
    start = 1
    if s[1] == '+' or s[1] == '-':
        if len(s) > 2:
            start = 2
        # e+ e-
        else: return False
    for i in range(start, len(s)):
        if s[i] < '0' or s[i] > '9':
            return False
    return True


trues = ['+100', '5e2', '-123', '3.212', '-1E-16', '+000', '-32.E-12']
falses = ['12e', '1q3.14', '1.2.3', '+-5', '', '12e+1.5', '+']
for item in trues:
    print(isNum(item), end=' ')
print('')
for item in falses:
    print(isNum(item), end=' ')
