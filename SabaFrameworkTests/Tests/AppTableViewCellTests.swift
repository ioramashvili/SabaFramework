import XCTest
@testable import SabaFramework

class AppTableViewCellTests: XCTestCase {

    var cell: AppTableViewCell!
    
    override func setUp() {
        super.setUp()
        
        cell = AppTableViewCell()
    }
    
    override func tearDown() {
        cell = nil
        super.tearDown()
    }
    
    func testIdentifier() {
        XCTAssertEqual(AppTableViewCell.identifier, AppTableViewCellType.unknown.identifier)
    }
    
    func testType() {
        XCTAssertEqual(AppTableViewCell.type, AppTableViewCellType.unknown)
    }
    
    func testSelectionStyle() {
        cell.awakeFromNib()
        
        XCTAssertEqual(cell.selectionStyle, .none)
    }
}
