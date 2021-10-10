//
//  main.swift
//  SortPlayground
//
//  Created by treastrain on 2021/10/10.
//

import Foundation
import ICantBelieveItCanSort

let sampleArray = [6, 5, 8, 9, 1, 4, 3, 10, 7, 2]



// MARK: - Using `ICantBelieveItCanSort` library
do {
    var array = sampleArray
    print("Before:", array)
    
    array.iCantBelieveItCanSort() // same: array.iCantBelieveItCanSort(by: <)
    
    print(" After:", array)
}


// MARK: - Swift Foundation's Sort
do {
    var array = sampleArray
    print("Swift Foundation's Sort:")
    print("\tBefore:", array)
    
    array.sort()
    
    print("\t After:", array)
}



// MARK: - Stanley P. Y. Fung
//         Is this the simplest (and most surprising) sorting algorithm ever?
//         arXiv:2110.01111v1 [cs.DS] 3 Oct 2021
//         https://arxiv.org/abs/2110.01111v1

// MARK: - Algorithm 1 ICan'tBelieveItCanSort(A[1..n])
do {
    var array = sampleArray
    print("Algorithm 1:")
    print("\tBefore:", array)
    
    for i in array.indices { // same operation: `for i in 0..<array.count {`
        for j in array.indices { // same operation: `for j in 0..<array.count {`
            if array[i] < array[j] {
                array.swapAt(i, j)
            }
        }
    }
    
    print("\t After:", array)
}


// MARK: - Algorithm 2 ExchangeSort(A[1..n])
do {
    var array = sampleArray
    print("Algorithm 2:")
    print("\tBefore:", array)
    
    for i in array.indices { // same operation: `for i in 0..<array.count {`
        for j in i+1..<array.count {
            if array[i] > array[j] {
                array.swapAt(i, j)
            }
        }
    }
    
    print("\t After:", array)
}


// MARK: - Algorithm 3 (“Improvement” to Algorithm 1)
do {
    var array = sampleArray
    print("Algorithm 3:")
    print("\tBefore:", array)
    
    for i in 1..<array.count {
        for j in 0..<i-1 {
            if array[i] < array[j] {
                array.swapAt(i, j)
            }
        }
    }
    
    print("\t After:", array)
    
    
    // Failed pattern
    array = [8, 1, 4, 2, 10, 5, 3, 6, 7, 9]
    print("\tFailed pattern before:", array)
    
    for i in 1..<array.count {
        for j in 0..<i-1 {
            if array[i] < array[j] {
                array.swapAt(i, j)
            }
        }
    }
    
    print("\tFailed pattern  after:", array)
}
