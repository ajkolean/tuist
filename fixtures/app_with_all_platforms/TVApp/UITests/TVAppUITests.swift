import XCTest

final class TVAppUITests: XCTestCase {
    func testTVOSUITest() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        XCTAssertTrue(true)
    }
}
