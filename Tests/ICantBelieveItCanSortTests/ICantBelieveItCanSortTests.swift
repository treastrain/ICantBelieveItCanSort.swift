//
//  ICantBelieveItCanSortTests.swift
//  ICantBelieveItCanSortTests
//
//  Created by treastrain on 2021/10/10.
//

import XCTest
@testable import ICantBelieveItCanSort

final class ICantBelieveItCanSortTests: XCTestCase {
    func testSortedCase() throws {
        let array = [8, 1, 4, 2, 10, 5, 3, 6, 7, 9]
        let array1 = array.sorted()
        let array2 = array.iCantBelieveItCanSorted()
        
        XCTAssertEqual(array1, array2)
    }
    
    func testSortCase() throws {
        let array = [8, 1, 4, 2, 10, 5, 3, 6, 7, 9]
        var array1 = array; array1.sort()
        var array2 = array; array2.iCantBelieveItCanSort()
        
        XCTAssertEqual(array1, array2)
    }
    
    func test1000Times() throws {
        for _ in 0..<1000 {
            let array = (0..<100).map { _ in
                Int.random(in: 0...Int.max)
            }
            let array1 = array.sorted()
            let array2 = array.iCantBelieveItCanSorted()
            
            XCTAssertEqual(array1, array2)
        }
    }
}
