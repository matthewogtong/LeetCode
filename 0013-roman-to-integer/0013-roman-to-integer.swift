class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanDict: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        var result = 0
        var previousNumber = 0

        for c in s {
            if let value = romanDict[c] {
                if value > previousNumber {
                    result += value - (2 * previousNumber)
                } else {
                    result += value
                }
                previousNumber = value
            }
        }
        return result
    }
}