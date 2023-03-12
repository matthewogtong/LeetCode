class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let lowercaseString = s.lowercased()
        let alphanumericString = lowercaseString.replacingOccurrences(of: "[^a-z0-9]", with: "", options: .regularExpression)
        return alphanumericString == String(alphanumericString.reversed())
    }
}