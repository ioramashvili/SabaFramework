import Foundation

public typealias JSONParam = [String: Any]
public typealias OptionalJSONParam = [String: Any?]

extension Optional where Wrapped: Any {
    public var boolValue: Bool? {
        return self as? Bool
    }
    
    public var stringValue: String? {
        return self as? String
    }
    
    public var doubleValue: Double? {
        return self as? Double
    }
    
    public var intValue: Int? {
        return self as? Int
    }
    
    public var jsonParam: JSONParam? {
        return self as? JSONParam
    }
    
    public var jsonParams: [JSONParam]? {
        return self as? [JSONParam]
    }
    
    public var optionalJSONParam: OptionalJSONParam? {
        return self as? OptionalJSONParam
    }
    
    public var optionalJSONParams: [OptionalJSONParam]? {
        return self as? [OptionalJSONParam]
    }
}

