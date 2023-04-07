class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
    
        var frequencyCounter: [Character: Int] = [:]
        
        for char in s {
            frequencyCounter[char, default: 0] += 1
        }
        
        for char in t {
            frequencyCounter[char, default: 0] -= 1
            if frequencyCounter[char]! < 0 {
                return false
            }
        }
        
        return true
    }
}