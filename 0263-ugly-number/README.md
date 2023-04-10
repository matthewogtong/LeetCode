<h2><a href="https://leetcode.com/problems/ugly-number/">263. Ugly Number</a></h2><h3>Easy</h3><hr><div><p>An <strong>ugly number</strong> is a positive integer whose prime factors are limited to <code>2</code>, <code>3</code>, and <code>5</code>.</p>

<p>Given an integer <code>n</code>, return <code>true</code> <em>if</em> <code>n</code> <em>is an <strong>ugly number</strong></em>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> n = 6
<strong>Output:</strong> true
<strong>Explanation:</strong> 6 = 2 × 3
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> n = 1
<strong>Output:</strong> true
<strong>Explanation:</strong> 1 has no prime factors, therefore all of its prime factors are limited to 2, 3, and 5.
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> n = 14
<strong>Output:</strong> false
<strong>Explanation:</strong> 14 is not ugly since it includes the prime factor 7.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>-2<sup>31</sup> &lt;= n &lt;= 2<sup>31</sup> - 1</code></li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Check if the input number `n` is less than or equal to 0, and return `false` if true
- Create an array of prime factors `[2, 3, 5]`
- Iterate through the prime factors and continuously divide the input number `n` by the current prime factor while `n` is divisible by it
- After iterating through all prime factors, check if the input number `n` is equal to 1, and return `true` if true, otherwise return `false`

## Complexity
- Time complexity:
$$O(log n)$$ - we are iteratively dividing the input number by the prime factors

- Space complexity:
$$O(1)$$ - we are using constant extra space (array of prime factors)

## Code
```swift
class Solution {
    func isUgly(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        
        var num = n
        let primeFactors = [2, 3, 5]
        
        for factor in primeFactors {
            while num % factor == 0 {
                num /= factor
            }
        }
        
        return num == 1
    }
}
```
