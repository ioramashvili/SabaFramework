import XCTest
@testable import SabaFramework

class UIViewExtensionTests: XCTestCase {
    
    var view: UIView!
    var blurEffectView: UIVisualEffectView!
    
    override func setUp() {
        super.setUp()
        
        view = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 150, height: 100)))
        blurEffectView = view.addBlurEffect(with: .extraLight)
    }
    
    override func tearDown() {
        view = nil
        blurEffectView = nil
        super.tearDown()
    }
    
    func testCornerRadiusHalfOfHeight() {
        view.makeCornerRadiusHalfOfHeight()
        
        XCTAssertEqual(view.layer.cornerRadius, view.frame.height / 2)
    }
    
    func testCornerRadiusHalfOfWidth() {
        view.makeCornerRadiusHalfOfWidth()
        
        XCTAssertEqual(view.layer.cornerRadius, view.frame.width / 2)
    }
    
    func testBlurEffectCreation() {
        XCTAssertEqual(view.subviews.contains(blurEffectView), true)
    }
    
    func testBlurEffectBounds() {
        XCTAssertEqual(blurEffectView.frame, view.bounds)
    }
}





