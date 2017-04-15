public class WordHelper
{
    
    public static func WordFix(value: String) -> String
    {
        var newValue: String = ""
        
        newValue = value
            .replacingOccurrences(of: "İ", with: "I")
            .lowercased()
            .replacingOccurrences(of: "ş", with: "s")
            .replacingOccurrences(of: "ğ", with: "g")
            .replacingOccurrences(of: "ü", with: "u")
            .replacingOccurrences(of: "ı", with: "i")
            .replacingOccurrences(of: "ö", with: "o")
            .replacingOccurrences(of: "ç", with: "c")

        return newValue
    }
    
}
