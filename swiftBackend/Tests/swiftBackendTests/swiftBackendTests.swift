import XCTest
@testable import swiftBackend

class swiftBackendTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(swiftBackend().text, "Hello, World!")
    }


    static var allTests : [(String, (swiftBackendTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
