import XCTest

class CGFloatExtensionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHalf() {
        let cgFloat: CGFloat = 2.3
        
        XCTAssertEqual(cgFloat.half, 1.15)
    }
}
