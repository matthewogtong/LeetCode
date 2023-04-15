class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let words = s.split(separator: " ").map { String($0) }
        if pattern.count != words.count { return false }

        var patternToWord = [Character: String]()
        var wordToPattern = [String: Character]()

        for (index, char) in pattern.enumerated() {
            let word = words[index]

            if let existingWord = patternToWord[char] {
                if existingWord != word {
                    return false
                }
            } else {
                patternToWord[char] = word
            }

            if let existingPattern = wordToPattern[word] {
                if existingPattern != char {
                    return false
                }
            } else {
                wordToPattern[word] = char
            }
        }

        return true
    }
}