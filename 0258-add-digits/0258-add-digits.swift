class Solution {
    func addDigits(_ num: Int) -> Int {
        var currentNum = num

        while currentNum > 9 {
            let digits = String(currentNum).compactMap { Int(String($0)) }
            currentNum = digits.reduce(0, +)
        }

        return currentNum
    }
}