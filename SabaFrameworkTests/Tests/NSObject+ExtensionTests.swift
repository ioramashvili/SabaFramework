import XCTest
@testable import SabaFramework

class SabaFrameworkTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testClassNameAsInstanceProperty() {
        let textObject = NSObject()
        
        XCTAssertEqual(textObject.className, "NSObject")
    }
    
    func testClassNameAsClassStaticProperty() {
        XCTAssertEqual(NSObject.className, "NSObject")
    }
}
