import XCTest
@testable import AOCDayOneLibrary

class AOCDayOneLibraryTests: XCTestCase {
    
    func testFindShortestDistance() {
        XCTAssertEqual(findShortestDistance(inputString: "L1, L2"), 3)
    }
    
}


extension AOCDayOneLibraryTests {
    static var allTests : [(String, (AOCDayOneLibraryTests) -> () throws -> Void)] {
        return [("testFindShortestDistance", testFindShortestDistance)]
    }
}
