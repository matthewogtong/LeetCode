<h2><a href="https://leetcode.com/problems/valid-anagram/">242. Valid Anagram</a></h2><h3>Easy</h3><hr><div><p>Given two strings s and t, return true if t is an anagram of s, and false otherwise.</p>

## Solution Details

## Approach
- Check if the lengths of the two strings are equal. If not, return false.
- Create a dictionary (frequency counter) to store the frequency of each character in the first string `s`.
- Iterate through the second string `t` and decrement the frequency count of each character in the dictionary.
- Check if all characters in the dictionary have a frequency of zero. If true, return true; otherwise, return false.

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the length of the input strings

- Space complexity:
$$O(c)$$ - `c` is the number of unique characters in the input strings, since we use a dictionary to store the frequency of characters

## Code
```swift
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
```
