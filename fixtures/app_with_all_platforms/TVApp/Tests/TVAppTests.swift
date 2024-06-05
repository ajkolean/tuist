import XCTest
@testable import TVApp

final class TVAppTests: XCTestCase {
    func testMacOsSTest() async throws {
        XCTAssertEqual(TVApp.tvapp, "tvapp")
    }
}
