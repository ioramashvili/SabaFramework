import UIKit

open class AppTableViewCell: UITableViewCell {
    open static var identifier: String {
        return type.identifier
    }
    
    open class var nib: UINib {
        return UINib(nibName: className, bundle: Bundle(for: self))
    }
    
    open class var type: AppTableViewCellType {
        return .unknown
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
}
