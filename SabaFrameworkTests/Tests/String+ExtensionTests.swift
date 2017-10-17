import XCTest
@testable import SabaFramework

class StringExtensionTests: XCTestCase {
    
    var dict: [String: String]!
    
    override func setUp() {
        super.setUp()
        
        dict = [:]
        dict["This is it"] = "თჰის ის იტ"
        dict["Gamarjoba"] = "გამარჯობა"
        dict["flugengenzelxoleni"] = "ფლუგენგენზელხოლენი"
    }
    
    override func tearDown() {
        dict = nil
        super.tearDown()
    }
    
    func testToGeorgian() {
        for item in dict {
            XCTAssertEqual(item.key.toGeorgian, item.value)
        }
    }
}
