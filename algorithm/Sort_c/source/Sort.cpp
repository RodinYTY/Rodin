//
// Created by RodinYTY on 2020/9/4.
//

#include "../header/Sort.h"
#include <iostream>
#define prnPoint(ptr, len) for (int i = 0; i < len; i++) {std::cout << ptr[i] << " ";} std::cout << std::endl;

/// 带监视哨的直接插入排序，仅仅使用了常数个辅助单元，空间复杂度为O(1)
/// \param L
/// \param len 元素个数，实际长度为len+1
void Sort::InsertSortWithScout(int *L, int len) {
    for (int i = 2; i <= len; i++) {
        // 最好的情况：L[i]都不小于左边元素，就不用执行该判断语句，时间复杂度：O(n)
        // 最差的情况：逆序数组，双重for循环，时间复杂度：O(n²)
        // 比较次数：∑(i=1->n-1)i=n(n-1)/2，移动次数：∑(i=1->n-1)i+1=(n+2)(n-1)/2
        // 平均时间复杂度：O(n²)
        L[0] = L[i];
        int j;
        // 结束条件：遇见小于或等于pivot的
        // 稳定性：先判断再移动，相对位置不变
        for (j = i - 1; L[j] > L[0]; j--)
            L[j + 1] = L[j];
        L[j + 1] = L[0];
    }
}

/// 不带监视哨的直接插入排序
/// \param L
/// \param len 数组长度
void Sort::InsertSortWithoutScout(int *L, int len) {
    for (int i = 1; i < len; i++) {
        if (L[i] < L[i - 1]) {
            int key = L[i], j;
            for (j = i - 1; j >= 0 && L[j] > key; j--)
                L[j + 1] = L[j];
            L[j + 1] = key;
        }
    }
}

/// 带监视哨的折半插入排序
/// \param L
/// \param len 元素个数，实际长度为len+1
void Sort::bInsertSortWithScout(int *L, int len) {
    for (int i = 2; i <= len; i++) {
        L[0] = L[i];
        int low = 1, high = i - 1, mid;
        while (low <= high) {
            mid = (low + high) / 2;
            if (L[mid] < L[0])
                high = mid - 1;
            else
                low = mid + 1;
        }
        for (int j = i - 1; j != high; j--)
            L[j + 1] = L[j];
        L[high + 1] = L[0];
    }
}

/// 快速排序的入口函数，递归程序，空间复杂度：O(log2 n)~O(n)，平均：O(log2 n)
/// \param L
/// \param len 数组长度
void Sort::qSort(int *L, int len) {
    // 时间复杂度：平均O(nlog2 n)
    int pivotloc = partition(L, 0, len - 1);
    qSort(L, 0, pivotloc - 1);
    qSort(L, pivotloc + 1, len - 1);
}

void Sort::qSort(int *L, int low, int high) {
    if (low < high) {
        int pivotloc = partition(L, low, high);
        qSort(L, low, pivotloc - 1);
        qSort(L, pivotloc + 1, high);
    }
}

/// pivot为枢轴，需要将数组划分为两段，最差情况：____n-1个元素___[枢轴]_没有元素_，时间复杂度：O(n²)
/// \return 枢轴位置
int Sort::partition(int *L, int low, int high) {
//  int pivotkey = L[low]; 第一个元素作为枢轴
    // 稳定性：不稳定，[3,②,2]->[2,②,3]
    while(low < high){
        // 左终止条件：遇到比自己小的数
        while(low < high && L[high] >= L[low]) high--;
        int t = L[high]; L[high] = L[low]; L[low] = t;
        // 右终止条件：遇到比自己大的数
        while(low < high && L[low] <= L[high]) low++;
        t = L[high]; L[high] = L[low]; L[low] = t;
    }
    return low;
}

/// 希尔排序，仅仅使用了常数个辅助单元，空间复杂度为O(1)
/// \param L
/// \param len 数组长度
void Sort::shellSortWithoutScout(int *L, int len) {
    // 时间复杂度：O(n^1.3)~O(n²)
    // 稳定性：不稳定
    // 适用性：顺序存储
    for (int dk = len / 2; dk >= 1; dk /= 2) //步长变化
        for (int i = dk; i < len; i++) { //插入排序的起始位置都为序列第二个元素
            int key = L[i], j;
            for (j = i - dk; j >= 0 && L[j] > key; j -= dk)
                L[j + dk] = L[j];
            L[j + dk] = key;
        }
}

/// 冒泡排序
void Sort::bubbleSort(int *L, int len) {
    for (int i = 0; i <= len - 1; i++) {
        int flag = false, t;
        // j: i+1<-n
        // 比较次数：∑(i=1->n)(n-(i+1)+1)=n(n-1)/2
        for (int j = len - 1; j != i; j--)
            if (L[j - 1] > L[j]) {
                t = L[j];L[j] = L[j - 1];L[j - 1] = t;
                flag = true;
            }
        if (!flag)
            return;
    }
}

/// 堆排序，空间复杂度：O(1)，显然不稳定
/// \param heap 堆数组
/// \param len 堆元素个数
void Sort::heapSort(int *heap, int len) {
    // 初始化最大堆
    buildMaxHeap(heap, len);
    for(int k = len, t; k > 1; k--){
        // 将堆顶放到len对应的位置（最后）
        t = heap[k]; heap[k] = heap[1]; heap[1] = t;
        // k - 1意味着有一个元素离开堆
        headAdjust(heap, 1, k - 1);
    }
}

/// 构建最大堆
void Sort::buildMaxHeap(int *heap, int len) {
    // 根位置：len/2~1
    for (int i = len / 2; i >= 1; i--)
        headAdjust(heap, i, len);
}

/// 调整以k为根的堆
/// \param heap 堆对应的数组
/// \param k 堆顶元素位置
/// \param len 堆元素个数
void Sort::headAdjust(int *heap, int k, int len) {
    // 暂存根节点
    heap[0] = heap[k];
    int i = 2 * k; // i表示的是较大根的位置
    while (i <= len) {
        if (i < len && heap[i] < heap[i + 1])
            i++;
        if (heap[0] < heap[i]) {
            heap[k] = heap[i];
            k = i;
        }
        else
            break;
        i *= 2;
    }
    heap[k] = heap[0];
}

