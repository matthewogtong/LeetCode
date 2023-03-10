<h2><a href="https://leetcode.com/problems/pascals-triangle-ii/">119. Pascal's Triangle II</a></h2><h3>Easy</h3><hr><div><p>Given an integer <code>rowIndex</code>, return the <code>rowIndex<sup>th</sup></code> (<strong>0-indexed</strong>) row of the <strong>Pascal's triangle</strong>.</p>

<p>In <strong>Pascal's triangle</strong>, each number is the sum of the two numbers directly above it as shown:</p>
<img alt="" src="https://upload.wikimedia.org/wikipedia/commons/0/0d/PascalTriangleAnimated2.gif" style="height:240px; width:260px">
<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> rowIndex = 3
<strong>Output:</strong> [1,3,3,1]
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> rowIndex = 0
<strong>Output:</strong> [1]
</pre><p><strong class="example">Example 3:</strong></p>
<pre><strong>Input:</strong> rowIndex = 1
<strong>Output:</strong> [1,1]
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= rowIndex &lt;= 33</code></li>
</ul>

<p>&nbsp;</p>
<p><strong>Follow up:</strong> Could you optimize your algorithm to use only <code>O(rowIndex)</code> extra space?</p>
</div>
</br>

# Solution Details

## Approach
- Initialize an array `row` with the first two rows of Pascal's triangle, which are [1] and [1,1]
- If `rowIndex` is less than or equal to 1, return the corresponding row from `row`
- For `i` from 2 to `rowIndex`, calculate the values of the current row by adding the corresponding values from the previous row and appending them to `row`
- Return `row`

## Complexity
- Time complexity:
$$O(rowIndex^2)$$ - as we need to generate the previous rows of the triangle to generate the current row

- Space complexity:
$$O(rowIndex)$$ - as we only need to store the current row

## Code
```swift
class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var row = [[1], [1, 1]]
    
        if rowIndex <= 1 {
            return row[rowIndex]
        }

        for i in 2...rowIndex {
            var currentRow = [1]

            for j in 1..<i {
                let value = row[i - 1][j - 1] + row[i - 1][j]
                currentRow.append(value)
            }

            currentRow.append(1)
            row.append(currentRow)
        }

        return row[rowIndex]
    }
}
```
