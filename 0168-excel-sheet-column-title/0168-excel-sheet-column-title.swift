class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var columnTitle = ""
        var currentNumber = columnNumber

        while currentNumber > 0 {
            let remainder = (currentNumber - 1) % 26
            let char = Character(UnicodeScalar(65 + remainder)!)
            columnTitle.insert(char, at: columnTitle.startIndex)
            currentNumber = (currentNumber - 1) / 26
        }

        return columnTitle
    }
}