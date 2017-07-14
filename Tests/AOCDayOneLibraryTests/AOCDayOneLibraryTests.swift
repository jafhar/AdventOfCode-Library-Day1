import XCTest
@testable import AOCDayOneLibrary

class AOCDayOneLibraryTests: XCTestCase {
    
    func testFindShortestDistance() {
        XCTAssertEqual(shortestDistanceFor(inputString: "L1, L2"), 3)
    }
    
    func testFindShortestDistanceTo() {
        XCTAssertEqual(shortestDistanceFor(inputString: "L1, R2, L2, L4, R5, R7"), 13)
    }
    
    func testFindShortestDistanceFor() {
        XCTAssertEqual(shortestDistanceFor(inputString: "R4, R1, L2, R1, L1, L1, R1, L5, R1, R5, L2, R3, L3, L4, R4, R4, R3, L5, L1, R5, R3, L4, R1, R5, L1, R3, L2, R3, R1, L4, L1, R1, L1, L5, R1, L2, R2, L3, L5, R1, R5, L1, R188, L3, R2, R52, R5, L3, R79, L1, R5, R186, R2, R1, L3, L5, L2, R2, R4, R5, R5, L5, L4, R5, R3, L4, R4, L4, L4, R5, L4, L3, L1, L4, R1, R2, L5, R3, L4, R3, L3, L5, R1, R1, L3, R2, R1, R2, R2, L4, R5, R1, R3, R2, L2, L2, L1, R2, L1, L3, R5, R1, R4, R5, R2, R2, R4, R4, R1, L3, R4, L2, R2, R1, R3, L5, R5, R2, R5, L1, R2, R4, L1, R5, L3, L3, R1, L4, R2, L2, R1, L1, R4, R3, L2, L3, R3, L2, R1, L4, R5, L1, R5, L2, L1, L5, L2, L5, L2, L4, L2, R3"), 161)
    }
    
    func testFindDistanceToFirstRevisitedLoc() {
        XCTAssertEqual(distanceToFirstRevisitedLocationIn(inputString: "R8, R4, R4, R8"), 4)
    }
    
    func testFindDistanceToFirstIntersectedLoc() {
        XCTAssertEqual(distanceToFirstRevisitedLocationIn(inputString: "R4, R1, L2, R1, L1, L1, R1, L5, R1, R5, L2, R3, L3, L4, R4, R4, R3, L5, L1, R5, R3, L4, R1, R5, L1, R3, L2, R3, R1, L4, L1, R1, L1, L5, R1, L2, R2, L3, L5, R1, R5, L1, R188, L3, R2, R52, R5, L3, R79, L1, R5, R186, R2, R1, L3, L5, L2, R2, R4, R5, R5, L5, L4, R5, R3, L4, R4, L4, L4, R5, L4, L3, L1, L4, R1, R2, L5, R3, L4, R3, L3, L5, R1, R1, L3, R2, R1, R2, R2, L4, R5, R1, R3, R2, L2, L2, L1, R2, L1, L3, R5, R1, R4, R5, R2, R2, R4, R4, R1, L3, R4, L2, R2, R1, R3, L5, R5, R2, R5, L1, R2, R4, L1, R5, L3, L3, R1, L4, R2, L2, R1, L1, R4, R3, L2, L3, R3, L2, R1, L4, R5, L1, R5, L2, L1, L5, L2, L5, L2, L4, L2, R3"), 110)
    }
    
}


extension AOCDayOneLibraryTests {
    static var allTests : [(String, (AOCDayOneLibraryTests) -> () throws -> Void)] {
        return [("testFindShortestDistance", testFindShortestDistance),
                ("testFindDistanceToFirstRevisitedLoc", testFindDistanceToFirstRevisitedLoc),
                ("testFindShortestDistanceFor", testFindShortestDistanceFor),
                ("testFindDistanceToFirstIntersectedLoc", testFindDistanceToFirstIntersectedLoc),
                ("testFindShortestDistanceTo", testFindShortestDistanceTo)
        ]
    }
}
