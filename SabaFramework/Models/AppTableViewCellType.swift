public enum AppTableViewCellType: Int {
    case unknown = 0
    
    var identifier: String {
        return "cell\(rawValue)"
    }
}

