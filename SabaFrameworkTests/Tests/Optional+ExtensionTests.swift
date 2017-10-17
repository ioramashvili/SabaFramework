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
        guard let _ = param[0].boolValue else {
            XCTFail("not Bool")
            return
        }
    }
    
    func testStringValue() {
        guard let _ = param[1].stringValue else {
            XCTFail("not String")
            return
        }
    }
    
    func testDoubleValue() {
        guard let _ = param[2].doubleValue else {
            XCTFail("not Double")
            return
        }
    }
    
    func testIntValue() {
        guard let _ = param[3].intValue else {
            XCTFail("not Int")
            return
        }
    }
    
    func testJSONParamValue() {
        guard let _ = param[4].jsonParam else {
            XCTFail("not JSONParam")
            return
        }
    }
    
    func testJSONParamsValue() {
        guard let _ = param[5].jsonParams else {
            XCTFail("not [JSONParam]")
            return
        }
    }
    
    func testOptionalJSONParamValue() {
        guard let _ = param[6].optionalJSONParam else {
            XCTFail("not OptionalJSONParam")
            return
        }
    }
    
    func testOptionalJSONParamsValue() {
        guard let _ = param[7].optionalJSONParams else {
            XCTFail("not [OptionalJSONParam]")
            return
        }
    }
}
