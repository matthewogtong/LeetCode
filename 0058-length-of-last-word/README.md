<h2><a href="https://leetcode.com/problems/length-of-last-word/">58. Length of Last Word</a></h2><h3>Easy</h3><hr><div><p>Given a string <code>s</code> consisting of words and spaces, return <em>the length of the <strong>last</strong> word in the string.</em></p>

<p>A <strong>word</strong> is a maximal <span data-keyword="substring-nonempty">substring</span> consisting of non-space characters only.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> s = "Hello World"
<strong>Output:</strong> 5
<strong>Explanation:</strong> The last word is "World" with length 5.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> s = "   fly me   to   the moon  "
<strong>Output:</strong> 4
<strong>Explanation:</strong> The last word is "moon" with length 4.
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> s = "luffy is still joyboy"
<strong>Output:</strong> 6
<strong>Explanation:</strong> The last word is "joyboy" with length 6.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 10<sup>4</sup></code></li>
	<li><code>s</code> consists of only English letters and spaces <code>' '</code>.</li>
	<li>There will be at least one word in <code>s</code>.</li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Trim the input string to remove any leading or trailing spaces.
- Starting from the end of the trimmed string, count the length of the last word until you reach a space or the beginning of the string.
- Return the length of the last word.

## Complexity
- Time complexity:
$$O(n)$$

- Space complexity:
$$O(1)$$

## Code
```
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
```
