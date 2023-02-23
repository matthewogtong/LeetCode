<h2><a href="https://leetcode.com/problems/add-binary/">67. Add Binary</a></h2><h3>Easy</h3><hr><div><p>Given two binary strings <code>a</code> and <code>b</code>, return <em>their sum as a binary string</em>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> a = "11", b = "1"
<strong>Output:</strong> "100"
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> a = "1010", b = "1011"
<strong>Output:</strong> "10101"
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= a.length, b.length &lt;= 10<sup>4</sup></code></li>
	<li><code>a</code> and <code>b</code> consist&nbsp;only of <code>'0'</code> or <code>'1'</code> characters.</li>
	<li>Each string does not contain leading zeros except for the zero itself.</li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Initialize variables `i`, `j`, `carry`, and `sum`.
- Use a loop to perform binary addition while `i` and `j` are greater than or equal to 0, or `carry` is greater than 0.
- Inside the loop, get the binary digits of a and b at positions `i` and `j` respectively, and add them to `carry`.
- Append the result modulo 2 to `sum`, and update `carry` to the result divided by 2.
- Decrement `i` and `j`.
- Reverse the order of `sum` and convert it to a binary string.
- Return the resulting binary string.

## Complexity
- Time complexity:
$$O(n)$$

- Space complexity:
$$O(n)$$

## Code
```
class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var i = a.count - 1
        var j = b.count - 1
        var carry = 0
        var sum = [Int]()
        
        // Perform binary addition
        while i >= 0 || j >= 0 || carry > 0 {
            let digitA = i >= 0 ? Int(String(a[a.index(a.startIndex, offsetBy: i)]))! : 0
            let digitB = j >= 0 ? Int(String(b[b.index(b.startIndex, offsetBy: j)]))! : 0
            let digitSum = digitA + digitB + carry
            
            sum.append(digitSum % 2)
            carry = digitSum / 2
            
            i -= 1
            j -= 1
        }
        
        // Convert the resulting sum to a binary string
        var result = ""
        for digit in sum.reversed() {
            result += String(digit)
        }
        
        return result
    }
}
```
