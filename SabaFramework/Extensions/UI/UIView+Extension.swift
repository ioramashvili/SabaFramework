import UIKit

extension UIView {
    public func makeCornerRadiusHalfOfHeight() {
        layer.cornerRadius = frame.height / 2
    }
    
    public func makeCornerRadiusHalfOfWidth() {
        layer.cornerRadius = frame.width / 2
    }
    
    public func addBlurEffect(with style: UIBlurEffectStyle) -> UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)

        blurEffectView.frame = bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(blurEffectView)
        
        return blurEffectView
    }
}

