<h2><a href="https://leetcode.com/problems/excel-sheet-column-title/">168. Excel Sheet Column Title</a></h2><h3>Easy</h3><hr><div><p>Given an integer <code>columnNumber</code>, return <em>its corresponding column title as it appears in an Excel sheet</em>.</p>

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

<pre><strong>Input:</strong> columnNumber = 1
<strong>Output:</strong> "A"
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> columnNumber = 28
<strong>Output:</strong> "AB"
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> columnNumber = 701
<strong>Output:</strong> "ZY"
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= columnNumber &lt;= 2<sup>31</sup> - 1</code></li>
</ul>
</div>

</br>

# Solution Details

## Approach
- Initialize an empty string `columnTitle` to store the resulting column title
- Loop until `columnNumber` is greater than 0.
- Calculate the current character by converting the remainder of `columnNumber - 1` divided by 26 to its corresponding ASCII character
- Append the current character to the beginning of the `columnTitle` string
- Update `columnNumber` by dividing it by 26

## Complexity
- Time complexity:
$$ O(log(columnNumber))$$ - each iteration of the loop reduces columnNumber by a factor of 26

- Space complexity:
$$ O(log(columnNumber))$$ - as the length of the resulting columnTitle string is proportional to the number of times we can divide columnNumber by 26

## Code
```swift
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
```
