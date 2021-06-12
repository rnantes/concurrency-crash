import XCTest
@testable import ConcurrencyCrash

final class ConcurrencyCrashTests: XCTestCase {

    func testSimpleConcurrency() async throws {
        let res = await aConcurrentFunc()
        XCTAssertEqual(res, "hi")
    }

    func aConcurrentFunc() async -> String {
        return "hi"
    }
}
