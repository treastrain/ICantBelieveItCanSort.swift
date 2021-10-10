//
//  ICantBelieveItCanSort.swift
//  ICantBelieveItCanSort
//
//  Created by treastrain on 2021/10/10.
//

import Foundation

extension Sequence where Element: Comparable {
    @inlinable
    public func iCantBelieveItCanSorted() -> [Element] {
        return iCantBelieveItCanSorted(by: <)
    }
}

extension Sequence {
    @inlinable
    public func iCantBelieveItCanSorted(by areInIncreasingOrder: (Element, Element) throws -> Bool) rethrows -> [Element] {
        var result = ContiguousArray(self)
        try result.iCantBelieveItCanSort(by: areInIncreasingOrder)
        return Array(result)
    }
}

extension MutableCollection where Self: RandomAccessCollection, Element: Comparable {
    @inlinable
    public mutating func iCantBelieveItCanSort() {
        iCantBelieveItCanSort(by: <)
    }
}

extension MutableCollection where Self: RandomAccessCollection {
    @inlinable
    public mutating func iCantBelieveItCanSort(by areInIncreasingOrder: (Element, Element) throws -> Bool) rethrows {
        //  Stanley P. Y. Fung
        //  Is this the simplest (and most surprising) sorting algorithm ever?
        //  arXiv:2110.01111v1 [cs.DS] 3 Oct 2021
        //  https://arxiv.org/abs/2110.01111v1
        for i in self.indices {
            for j in self.indices {
                if try areInIncreasingOrder(self[i], self[j]) {
                    self.swapAt(i, j)
                }
            }
        }
    }
}
