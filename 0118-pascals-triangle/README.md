<h2><a href="https://leetcode.com/problems/pascals-triangle/">118. Pascal's Triangle</a></h2><h3>Easy</h3><hr><div><p>Given an integer <code>numRows</code>, return the first numRows of <strong>Pascal's triangle</strong>.</p>

<p>In <strong>Pascal's triangle</strong>, each number is the sum of the two numbers directly above it as shown:</p>
<img alt="" src="https://upload.wikimedia.org/wikipedia/commons/0/0d/PascalTriangleAnimated2.gif" style="height:240px; width:260px">
<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> numRows = 5
<strong>Output:</strong> [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> numRows = 1
<strong>Output:</strong> [[1]]
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= numRows &lt;= 30</code></li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Create an empty result array to store the rows of Pascal's triangle.
- Initialize a one-dimensional array called `row` to [1], representing the first row of Pascal's triangle.
- Append `row` to the result array.
- Iterate over the rows of the triangle from the second row to the numRows-th row.
- Initialize a new one-dimensional array called `newRow` with length `i+1` for the i-th row.
- Set the first and last elements of `newRow` to 1.
- Iterate over the elements in between the first and last elements of newRow.
- For each element, set its value to the sum of the corresponding elements from the previous row (`row[j-1] and row[j]`).
- Set `row` to `newRow`.
- Append `row` to the result array.
- Return the result array.

## Complexity
- Time complexity:
$$O(numRows^2)$$

- Space complexity:
$$O(numRows^2)$$

## Code
```swift
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = []
        var row: [Int] = [1]
        result.append(row)
        
        for i in 1..<numRows {
            var newRow = Array(repeating: 0, count: i+1)
            newRow[0] = 1
            newRow[i] = 1
            for j in 1..<i {
                newRow[j] = row[j-1] + row[j]
            }
            row = newRow
            result.append(row)
        }
        
        return result
    }
}
```
