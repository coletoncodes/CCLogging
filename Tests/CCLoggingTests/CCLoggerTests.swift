//
//  CCLoggerTests.swift
//  
//
//  Created by Coleton Gorecke on 12/2/23.
//

@testable import CCLogging
import OSLog
import XCTest

final class CCLoggerTests: XCTestCase {
    private var sut: CCLogger!
    private var mockLoggingDestination: MockLoggingDestination!
    
    override func setUp() {
        super.setUp()
        
        mockLoggingDestination = MockLoggingDestination()
        
        sut = CCLogger()
    }
    
    struct MockLoggingDestination: CCLoggerDestination {
        
        var logStub: ((String, OSLogType, CCLogCategory, String, Int, String) -> Void)!
        
        func log(_ message: String, _ osLogType: OSLogType, _ category: CCLogCategory, function: String, line: Int, file: String) {
            logStub(message, osLogType, category, function, line, file)
        }
    }

    // MARK: - Tests
    func test_AddDestination_Success() {
        /** Given */
        var logWasCalled = false
        
        sut.destinations = []
        
        mockLoggingDestination.logStub = { _, _, _, _ ,_ , _ in
            logWasCalled = true
        }
        
        /** When */
        // we add the loggingDestination
        sut.add(self.mockLoggingDestination)
        
        sut.log("test", .default, .default, function: #function, line: #line, file: #file)
        
        /** Then */
        XCTAssertTrue(logWasCalled)
        XCTAssertEqual(sut.destinations.count, 1)
    }
    
    func test_AddExistingDestination_DoesNotAddIt() {
        /** Given */
        mockLoggingDestination.logStub = { _, _, _, _ ,_ , _ in }
        
        sut.destinations = [self.mockLoggingDestination]
        
        /** When */
        // we add the already existing loggingDestination
        sut.add(self.mockLoggingDestination)
        
        sut.log("test", .default, .default, function: #function, line: #line, file: #file)
        
        /** Then */
        XCTAssertEqual(sut.destinations.count, 1)
    }
}
