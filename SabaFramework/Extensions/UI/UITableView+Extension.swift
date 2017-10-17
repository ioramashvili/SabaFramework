import UIKit

extension UITableView {
    public func register(types: [AppTableViewCell.Type]) {
        types.forEach {
            register($0.nib, forCellReuseIdentifier: $0.identifier)
        }
    }
}
