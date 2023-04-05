<h2><a href="https://leetcode.com/problems/power-of-two/">231. Power of Two</a></h2><h3>Easy</h3><hr><div><p>Given an integer <code>n</code>, return <em><code>true</code> if it is a power of two. Otherwise, return <code>false</code></em>.</p>

<p>An integer <code>n</code> is a power of two, if there exists an integer <code>x</code> such that <code>n == 2<sup>x</sup></code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> n = 1
<strong>Output:</strong> true
<strong>Explanation: </strong>2<sup>0</sup> = 1
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> n = 16
<strong>Output:</strong> true
<strong>Explanation: </strong>2<sup>4</sup> = 16
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> n = 3
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>-2<sup>31</sup> &lt;= n &lt;= 2<sup>31</sup> - 1</code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow up:</strong> Could you solve it without loops/recursion?</div>
</br>

# Solution Details

## Approach
- Check if the number `n` is less than or equal to 0; if so, return false since a power of two must be positive
- Use bitwise AND operator to check if the number `n` has only one bit set to 1
- If the result of the bitwise AND operation is equal to `n`, then the number is a power of two, so return true; otherwise, return false

## Complexity
- Time complexity:
$$O(1)$$

- Space complexity:
$$O(1)$$

## Code
```swift
class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n <= 0 { return false }
        return n & (n - 1) == 0
    }
}
```
