class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = strs[0]
        for str in strs {
            while !str.hasPrefix(prefix) {
                prefix.removeLast()
                if prefix.isEmpty { return "" }
            }
        }
        return prefix
    }
}