import XCTest
@testable import FrameworkB

class FrameworkBTest: XCTestCase {
    func testProperty() async throws {
        XCTAssertEqual(FrameworkB.text, "Hello, FrameworkB!")
    }
}
