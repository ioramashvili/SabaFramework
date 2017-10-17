import Foundation

extension String {
    var georgianAlphabet: String {
        return "აბგდევზთიკლმნოპჟრსტუფქღყშჩცძწჭხჯჰაბგდევიკლმნოპუფქყხჰ"
    }
    
    var latinAlphabet: String {
        return "abgdevzTiklmnopJrstufqRySCcZwWxjhABGDEVIKLMNOPUFQYXH"
    }
    
    public var toGeorgian: String {
        let converted = self.map { char -> Character in
            
            if let i = latinAlphabet.characters.index(of: char) {
                return georgianAlphabet.characters[i]
            }
            
            return char
        }
        
        return String(converted)
    }
}
