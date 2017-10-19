import Foundation

public protocol UIStoryboardInstantiatable {
    func instantiate<T: UIViewController>(controller: T.Type) -> T?
}
