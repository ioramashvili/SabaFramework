import UIKit

extension UIStoryboard: UIStoryboardInstantiatable {
    open func instantiate<T: UIViewController>(controller: T.Type) -> T? {
        return instantiateViewController(withIdentifier: T.className) as? T
    }
}
