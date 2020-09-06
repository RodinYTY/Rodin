//
// Created by RodinYTY on 2020/9/4.
//

#ifndef SORT_C_SORT_H
#define SORT_C_SORT_H


class Sort {
public:
    void InsertSortWithScout(int L[], int len);
    void InsertSortWithoutScout(int L[], int len);
    void bInsertSortWithScout(int L[], int len);
    void qSort(int L[], int len);
    void qSort(int L[], int low, int high);
    void shellSortWithoutScout(int L[], int len);
    void bubbleSort(int L[], int len);
    void heapSort(int bTreeArr[], int len);

private:
    int partition(int L[], int low, int high);
    void buildMaxHeap(int bTreeArr[], int len);
    void headAdjust(int bTreeArr[], int root, int len);

};


#endif //SORT_C_SORT_H
