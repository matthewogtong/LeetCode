class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var result = 0
    
        for char in columnTitle {
            result = result * 26 + Int(char.asciiValue! - Character("A").asciiValue!) + 1
        }

        return result
    }
}