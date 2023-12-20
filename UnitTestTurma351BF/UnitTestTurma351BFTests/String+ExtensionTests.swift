//
//  String+ExtensionTests.swift
//  UnitTestTurma351BFTests
//
//  Created by Caio Fabrini on 19/12/23.
//

import XCTest
@testable import UnitTestTurma351BF

final class String_ExtensionTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRemoveWhiteSpaces() throws {
        // Executar funcao
        let nameWhiteSpace = "Caio Fabrini".removeWhiteSpace()
        // resultado esperado
        let name = "CaioFabrini"
        // validacao da condicao
        XCTAssertEqual(nameWhiteSpace, name)
    }
    
    func testReplace() throws {
        // Executar funcao
        let replaceDot = "10.com.".replace(string: ".", replacement: "@")
        // resultado esperado
        let replace = "10@com@"
        // validacao da condicao
        XCTAssertEqual(replaceDot, replace)
    }
    
    func testIsValidEmail() throws {
        // Executar funcao
        let validEmail = "teste@outlook.com"
        // resultado esperado
        let invalidEmail = "teste.com"
        // validacao da condicao
        XCTAssertTrue(validEmail.isValid(validType: .email))
        XCTAssertFalse(invalidEmail.isValid(validType: .email))
    }
    
    func testIsValidPassword() throws {
        // Executar funcao
        let validPassword = "123456"
        // resultado esperado
        let invalidPassword = "123"
        // validacao da condicao
        XCTAssertTrue(validPassword.isValid(validType: .password))
        XCTAssertFalse(invalidPassword.isValid(validType: .password))
    }

}
