<h2><a href="https://leetcode.com/problems/isomorphic-strings/">205. Isomorphic Strings</a></h2><h3>Easy</h3><hr><div><p>Given two strings <code>s</code> and <code>t</code>, <em>determine if they are isomorphic</em>.</p>

<p>Two strings <code>s</code> and <code>t</code> are isomorphic if the characters in <code>s</code> can be replaced to get <code>t</code>.</p>

<p>All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> s = "egg", t = "add"
<strong>Output:</strong> true
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> s = "foo", t = "bar"
<strong>Output:</strong> false
</pre><p><strong class="example">Example 3:</strong></p>
<pre><strong>Input:</strong> s = "paper", t = "title"
<strong>Output:</strong> true
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 5 * 10<sup>4</sup></code></li>
	<li><code>t.length == s.length</code></li>
	<li><code>s</code> and <code>t</code> consist of any valid ascii character.</li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Create two dictionaries, one for `s` to `t` mappings and one for `t` to `s` mappings
- Loop through each character in the strings, and add mappings to the dictionaries if they don't already exist
- If a mapping already exists, check if it matches the current mapping. If not, return false
- If the loop completes without any issues, return true

## Complexity
- Time complexity:
$$O(n)$$ - we iterate through each character in the strings once

- Space complexity:
$$O(n)$$

## Code
```swift
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
```
