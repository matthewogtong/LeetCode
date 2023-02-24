<h2><a href="https://leetcode.com/problems/sqrtx/">69. Sqrt(x)</a></h2><h3>Easy</h3><hr><div><p>Given a non-negative integer <code>x</code>, return <em>the square root of </em><code>x</code><em> rounded down to the nearest integer</em>. The returned integer should be <strong>non-negative</strong> as well.</p>

<p>You <strong>must not use</strong> any built-in exponent function or operator.</p>

<ul>
	<li>For example, do not use <code>pow(x, 0.5)</code> in c++ or <code>x ** 0.5</code> in python.</li>
</ul>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> x = 4
<strong>Output:</strong> 2
<strong>Explanation:</strong> The square root of 4 is 2, so we return 2.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> x = 8
<strong>Output:</strong> 2
<strong>Explanation:</strong> The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= x &lt;= 2<sup>31</sup> - 1</code></li>
</ul>
</div>
</br>

# Solution Details

## Approach
- If `x` is 0 or 1, return `x`

- Initialize the `left` and `right` bounds to `0` and `x`

- While `left` <= `right`:

    - Compute `mid` as (`left` + `right`) / 2

    - If the square of `mid` == `x`, return `mid`

    - If the square of `mid` < `x`, set `left` to `mid` + 1

    - Otherwise, set `right` to `mid` - 1

- Return the value of `right`

## Complexity
- Time complexity:
$$O(log x)$$

- Space complexity:
$$O(1)$$

## Code
```
class Solution {
    func mySqrt(_ x: Int) -> Int {
        if x == 0 || x == 1 {
            return x
        }
    
        var left = 0
        var right = x
        
        while left <= right {
            let mid = left + (right - left) / 2
            let square = mid * mid
            
            if square == x {
                return mid
            } else if square < x {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return right
    }
}
```
