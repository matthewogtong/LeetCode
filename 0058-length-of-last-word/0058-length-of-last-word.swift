class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        // Trim the input string
        let trimmedString = s.trimmingCharacters(in: .whitespaces)
    
        var length = 0
    
        // Starting from the end of the string, count the length of the last word
        for char in trimmedString.reversed() {
            if char == " " {
                break
            }
            length += 1
        }
    
        return length
    }
}