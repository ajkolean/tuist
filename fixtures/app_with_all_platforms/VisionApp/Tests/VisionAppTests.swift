import XCTest
@testable import VisionApp

class VisionAppTests: XCTestCase {
    func testVisionOsSdummyTest() async throws {
        XCTAssertEqual(VisionApp.hello, "hello")
    }
}
