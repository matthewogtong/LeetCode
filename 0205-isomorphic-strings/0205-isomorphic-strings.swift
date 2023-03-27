class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
    
        var sToT = [Character: Character]()
        var tToS = [Character: Character]()
        
        for (sChar, tChar) in zip(s, t) {
            if let mappedTChar = sToT[sChar], mappedTChar != tChar {
                return false
            }
            if let mappedSChar = tToS[tChar], mappedSChar != sChar {
                return false
            }
            sToT[sChar] = tChar
            tToS[tChar] = sChar
        }
        
        return true
    }
}