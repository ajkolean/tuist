import XCTest
@testable import MacApp

class MacAppTests: XCTestCase {
    func testMacOsSTest() async throws {
        XCTAssertEqual(MacApp.mac, "mac")
    }
}
