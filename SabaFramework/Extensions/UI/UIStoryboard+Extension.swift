import UIKit

extension UIStoryboard {
    public func instantiate<T: UIViewController>(controller: T.Type) -> T? {
        return instantiateViewController(withIdentifier: T.className) as? T
    }
}
