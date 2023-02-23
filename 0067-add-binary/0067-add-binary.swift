class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var i = a.count - 1
        var j = b.count - 1
        var carry = 0
        var sum = [Int]()
        
        // Perform binary addition
        while i >= 0 || j >= 0 || carry > 0 {
            let digitA = i >= 0 ? Int(String(a[a.index(a.startIndex, offsetBy: i)]))! : 0
            let digitB = j >= 0 ? Int(String(b[b.index(b.startIndex, offsetBy: j)]))! : 0
            let digitSum = digitA + digitB + carry
            
            sum.append(digitSum % 2)
            carry = digitSum / 2
            
            i -= 1
            j -= 1
        }
        
        // Convert the resulting sum to a binary string
        var result = ""
        for digit in sum.reversed() {
            result += String(digit)
        }
        
        return result
    }
}