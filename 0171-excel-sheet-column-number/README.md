<h2><a href="https://leetcode.com/problems/excel-sheet-column-number/">171. Excel Sheet Column Number</a></h2><h3>Easy</h3><hr><div><p>Given a string <code>columnTitle</code> that represents the column title as appears in an Excel sheet, return <em>its corresponding column number</em>.</p>

<p>For example:</p>

<pre>A -&gt; 1
B -&gt; 2
C -&gt; 3
...
Z -&gt; 26
AA -&gt; 27
AB -&gt; 28 
...
</pre>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> columnTitle = "A"
<strong>Output:</strong> 1
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> columnTitle = "AB"
<strong>Output:</strong> 28
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> columnTitle = "ZY"
<strong>Output:</strong> 701
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= columnTitle.length &lt;= 7</code></li>
	<li><code>columnTitle</code> consists only of uppercase English letters.</li>
	<li><code>columnTitle</code> is in the range <code>["A", "FXSHRXW"]</code>.</li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Initialize a variable `result` to 0
- Iterate through each character in the input string `columnTitle`
- For each character, multiply the current value of `result` by 26 and add the numerical value of the character minus the ASCII value of 'A' plus 1
- Return the final value of `result`

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the length of the input string. We iterate through each character in the string once

- Space complexity:
$$O(n)$$

## Code
```swift
class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var result = 0
    
        for char in columnTitle {
            result = result * 26 + Int(char.asciiValue! - Character("A").asciiValue!) + 1
        }

        return result
    }
}
```
