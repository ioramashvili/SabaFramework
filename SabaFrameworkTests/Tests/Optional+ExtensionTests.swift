import XCTest
import UIKit
@testable import SabaFramework

class OptionalExtensionTests: XCTestCase {
    
    var param: [Int: Any?]!
    
    override func setUp() {
        super.setUp()
        
        param = [:]
        param[0] = true
        param[1] = "nil"
        param[2] = 0.01
        param[3] = 0
        param[4] = ["Test": 1]
        param[5] = [["Test": 1]]
        param[6] = ["Test": 1]
        param[7] = [["Test": 1]]
    }
    
    override func tearDown() {
        param = nil
        super.tearDown()
    }
    
    func testBoolValue() {
        XCTAssertEqual(param[0].boolValue, true)
    }
    
    func testStringValue() {
        XCTAssertEqual(param[1].stringValue, "nil")
    }
    
    func testDoubleValue() {
        XCTAssertEqual(param[2].doubleValue, 0.01)
    }
    
    func testIntValue() {
        XCTAssertEqual(param[3].intValue, 0)
    }
    
    func testJSONParamValue() {
        XCTAssertNotNil(param[4].jsonParam)
    }
    
    func testJSONParamsValue() {
        XCTAssertNotNil(param[5].jsonParams)
    }
    
    func testOptionalJSONParamValue() {
        XCTAssertNotNil(param[6].optionalJSONParam)
    }
    
    func testOptionalJSONParamsValue() {
        XCTAssertNotNil(param[7].optionalJSONParams)
    }
}
