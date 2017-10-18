import Foundation

extension Bool {
    mutating func reverse() {
        self = reversed()
    }
    
    func reversed() -> Bool {
        return !self
    }
}
