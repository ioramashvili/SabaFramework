import XCTest
@testable import SabaFramework

class UIStoryboardExtensionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        
        super.tearDown()
    }

    func testInstantiate() {
        let bundle = Bundle(for: UIStoryboardExtensionTests.self)
        let storyboard = UIStoryboard(name: "Test", bundle: bundle)
        
        let controller = storyboard.instantiate(controller: TestViewController.self)
        
        XCTAssertNotNil(controller)
    }
}
