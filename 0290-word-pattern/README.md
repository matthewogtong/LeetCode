<h2><a href="https://leetcode.com/problems/word-pattern/">290. Word Pattern</a></h2><h3>Easy</h3><hr><div><p>Given a <code>pattern</code> and a string <code>s</code>, find if <code>s</code>&nbsp;follows the same pattern.</p>

<p>Here <b>follow</b> means a full match, such that there is a bijection between a letter in <code>pattern</code> and a <b>non-empty</b> word in <code>s</code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> pattern = "abba", s = "dog cat cat dog"
<strong>Output:</strong> true
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> pattern = "abba", s = "dog cat cat fish"
<strong>Output:</strong> false
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> pattern = "aaaa", s = "dog cat cat dog"
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= pattern.length &lt;= 300</code></li>
	<li><code>pattern</code> contains only lower-case English letters.</li>
	<li><code>1 &lt;= s.length &lt;= 3000</code></li>
	<li><code>s</code> contains only lowercase English letters and spaces <code>' '</code>.</li>
	<li><code>s</code> <strong>does not contain</strong> any leading or trailing spaces.</li>
	<li>All the words in <code>s</code> are separated by a <strong>single space</strong>.</li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Split the input string `s` into an array of words.
- Check if the pattern and the words in 's' have the same length. If not, return false.
- Create two dictionaries to store bijections for pattern characters and words in `s`.
- Iterate through the pattern and words, and store bijections in the dictionaries.

## Complexity
- Time complexity:
$$O(n)$$

- Space complexity:
$$O(n)$$

## Code
```swift
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
```
