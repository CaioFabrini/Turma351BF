//
//  CalculadoraTests.swift
//  UnitTestTurma351BFTests
//
//  Created by Caio Fabrini on 19/12/23.
//

import XCTest
@testable import UnitTestTurma351BF

final class CalculadoraTests: XCTestCase {
    
    var calculadora: Calculadora!

    override func setUpWithError() throws {
        calculadora = Calculadora()
    }

    override func tearDownWithError() throws {
        calculadora = nil
    }

    func testSoma() throws {
        let totalValue = calculadora.soma(valor1: 10, valor2: 10)
        XCTAssertEqual(totalValue, 20)
    }
    
    func testSubtracao() throws {
        let totalValue = calculadora.subtracao(valor1: 10, valor2: 10)
        XCTAssertEqual(totalValue, 0)
    }
    
    func testDiferente() throws {
        let totalValue = calculadora.diferente(valor1: 10, valor2: 15)
        XCTAssertEqual(totalValue, true)
    }

}
