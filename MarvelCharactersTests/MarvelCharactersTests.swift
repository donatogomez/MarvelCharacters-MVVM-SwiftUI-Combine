//
//  MarvelCharactersTests.swift
//  MarvelCharactersTests
//
//  Created by Donato Gomez on 5/6/22.
//

import XCTest
@testable import MarvelCharacters

class MarvelCharactersTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testModels() throws {
        let thumbnail = Thumbnail(path: "http://i.annihil.us/u/prod/marvel/i/mg/6/b0/5d93a767070ed", thumbnailExtension: Extension.jpg)
        let model = Result(id: 20, name: "Thor", thumbnail: thumbnail, title: "Deadpool (2008 - 2012)", description: "If there's one thing for sure when it comes to Marvel's Merc With a Mouth, it's that nothing's ever for sure! You can't get more unpredictable or unstable than wisecracking Wade Wilson, the regenerating degenerate who may be a hero this month and a pirate the next--you never know!")
        
        XCTAssertNotNil(model)
        XCTAssertEqual(model.name, "Thor")
    }

}
