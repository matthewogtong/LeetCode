<h2><a href="https://leetcode.com/problems/happy-number/">202. Happy Number</a></h2><h3>Easy</h3><hr><div><p>Write an algorithm to determine if a number <code>n</code> is happy.</p>

<p>A <strong>happy number</strong> is a number defined by the following process:</p>

<ul>
	<li>Starting with any positive integer, replace the number by the sum of the squares of its digits.</li>
	<li>Repeat the process until the number equals 1 (where it will stay), or it <strong>loops endlessly in a cycle</strong> which does not include 1.</li>
	<li>Those numbers for which this process <strong>ends in 1</strong> are happy.</li>
</ul>

<p>Return <code>true</code> <em>if</em> <code>n</code> <em>is a happy number, and</em> <code>false</code> <em>if not</em>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> n = 19
<strong>Output:</strong> true
<strong>Explanation:</strong>
1<sup>2</sup> + 9<sup>2</sup> = 82
8<sup>2</sup> + 2<sup>2</sup> = 68
6<sup>2</sup> + 8<sup>2</sup> = 100
1<sup>2</sup> + 0<sup>2</sup> + 0<sup>2</sup> = 1
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> n = 2
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n &lt;= 2<sup>31</sup> - 1</code></li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Create a helper function `getSumOfSquares()` to calculate the sum of the squares of the digits of a number
- Use Floyd's cycle-finding algorithm (tortoise and hare) to detect if a cycle exists while iterating through the sum of squares of the digits
- If a cycle is detected and the number 1 is not part of the cycle, the number is not happy. Otherwise, it is happy

## Complexity
- Time complexity:
$$O(log(n))$$ - since the sum of squares will eventually be reduced to a smaller number, the iteration is logarithmic

- Space complexity:
$$O(1)$$

## Code
```swift
class Solution {
    func isHappy(_ n: Int) -> Bool {
        func getSumOfSquares(_ num: Int) -> Int {
            var sum = 0
            var number = num
            
            while number > 0 {
                let digit = number % 10
                sum += digit * digit
                number /= 10
            }
            
            return sum
        }
        
        var tortoise = n
        var hare = getSumOfSquares(n)
        
        while hare != 1 && hare != tortoise {
            tortoise = getSumOfSquares(tortoise)
            hare = getSumOfSquares(getSumOfSquares(hare))
        }
        
        return hare == 1
    }
}
```
