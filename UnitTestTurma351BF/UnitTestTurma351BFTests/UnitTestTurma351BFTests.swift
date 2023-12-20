//
//  UnitTestTurma351BFTests.swift
//  UnitTestTurma351BFTests
//
//  Created by Caio Fabrini on 19/12/23.
//

import XCTest
@testable import UnitTestTurma351BF

// fluxo de teste
// 1 -> setUpWithError
// 2 -> método de teste
// 3 -> tearDownWithError
// 4 -> repete todo processo

final class UnitTestTurma351BFTests: XCTestCase {

    var myHouse: Casa!
    
    // como se fosse o viewDidLoad do teste
    override func setUpWithError() throws {
        myHouse = Casa()
    }

    // como se fosse o viewDidDisappear do teste
    override func tearDownWithError() throws {
        myHouse = nil
    }

    func testExample() throws {
        XCTAssertFalse(myHouse.nome == "Caio")
    }
    
    func testExample2() throws {
        myHouse.nome = "Francisco"
        XCTAssertEqual(myHouse.nome, "Francisco")
    }

}

struct Casa {
    var nome: String = "Minha casa"
}
