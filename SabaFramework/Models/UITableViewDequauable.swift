
public protocol UITableViewDequauable {
    func dequeueReusable<T: AppTableViewCell>(cell: T.Type, for indexPath: IndexPath) -> T?
    func dequeueReusable<T: AppTableViewCell>(cell: T.Type) -> T?
}
