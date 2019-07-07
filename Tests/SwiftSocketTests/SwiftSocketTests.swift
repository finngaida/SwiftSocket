import XCTest
@testable import SwiftSocket

final class SwiftSocketTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let s = TCPServer(address: "127.0.0.1", port: 1337)
        s.listen()

        while true {
            let c = s.accept(timeout: 30)
            c?.send(string: "Hello world!")
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
