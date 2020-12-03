//
//  Tests_101Tests.swift
//  Tests 101Tests
//
//  Created by Leonardo Oliveira on 24/11/20.
//

import XCTest
import UIKit

/// Permite acesso a propriedades e funções internals de outros módulos
@testable import Tests_101

class Tests_101Tests: XCTestCase {
    
    @AutoLayout var sut: UIView
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTranslateAutoResizingMask() {
        XCTAssertFalse(sut.translatesAutoresizingMaskIntoConstraints)
    }
    
    func testFrameZero() {
        XCTAssertEqual(sut.frame, CGRect(x: 0, y: 0, width: 0, height: 0))
    }

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//    
//    func testSoma() {
//        let x = 3
//        let y = 2
//        
//        Function.z = 299
//        
//        /// Afirmar logicamente se uma expressão é igual a outra
//        XCTAssertEqual(Function.soma(x: x, y: y), 5)
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//
////    func testPerformanceExample() throws {
////        // This is an example of a performance test case.
////        self.measure {
////            // Put the code you want to measure the time of here.
////        }
////    }

}
