import XCTest
@testable import SabaFramework

class BoolExtensionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testReversed() {
        let bool = true
        
        XCTAssertEqual(bool.reversed(), false)
    }
    
    func testReverse() {
        var bool = false
        
        bool.reverse()
        
        XCTAssertEqual(bool, true)
    }
}
