import XCTest
@testable import SabaFramework

class UITableView_ExtensionTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testRegisterTypes() {
        let tableView = UITableView()
        let types: [AppTableViewCell.Type] = [DummyTableViewCell.self]
        
        tableView.register(types: types)
        
        let cell = tableView.dequeueReusable(cell: DummyTableViewCell.self)
        
        XCTAssertNotNil(cell)
    }
}
