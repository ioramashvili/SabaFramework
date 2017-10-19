import UIKit

extension UITableView {
    public func register(types: [AppTableViewCell.Type]) {
        types.forEach {
            register($0.nib, forCellReuseIdentifier: $0.identifier)
        }
    }
}

extension UITableView: UITableViewDequauable {
    open func dequeueReusable<T: AppTableViewCell>(cell: T.Type, for indexPath: IndexPath) -> T? {
        return dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as? T
    }
    
    open func dequeueReusable<T: AppTableViewCell>(cell: T.Type) -> T? {
        return dequeueReusableCell(withIdentifier: T.identifier) as? T
    }
}
