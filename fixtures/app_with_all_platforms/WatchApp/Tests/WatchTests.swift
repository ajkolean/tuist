import XCTest
@testable import WatchApp

class WatchTests: XCTestCase {
    func testWatchOSTest() async throws {
        XCTAssertEqual(WatchConfig.title, "Hello, watchOS")
    }
}
