#include <iostream>
#include "header/Sort.h"

using namespace std;

#define prnArr(arr) for(auto i: arr){cout << i << " ";} cout << endl;

int main() {
    Sort *sort = new Sort();
    int a[] = {0, 4, 5, 9, 9, 5};
    sort->bInsertSortWithScout(a, 5);
    prnArr(a);
    int b[] = {4, 5, 9, 9, 5};
    sort->qSort(b, 5);
    prnArr(b);
    int c[] = {10, 9, 6, 4, 5, 4, 9, -3, 1, -8, -7, 12, 9};
    sort->mergeSort(c,0,12);
    prnArr(c);
    return 0;
}