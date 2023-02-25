<h2><a href="https://leetcode.com/problems/climbing-stairs/">70. Climbing Stairs</a></h2><h3>Easy</h3><hr><div><p>You are climbing a staircase. It takes <code>n</code> steps to reach the top.</p>

<p>Each time you can either climb <code>1</code> or <code>2</code> steps. In how many distinct ways can you climb to the top?</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> n = 2
<strong>Output:</strong> 2
<strong>Explanation:</strong> There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> n = 3
<strong>Output:</strong> 3
<strong>Explanation:</strong> There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= n &lt;= 45</code></li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Initialize two variables `a` and `b` to represent the number of ways to climb 1 step and 2 steps, respectively.
- Loop from `2` to `n`, and for each `i`, update `a` to be `b`, and `b` to be the sum of its previous value and `a`. For each step `i`, the total number of ways to reach that step is the sum of the number of ways to reach the previous two steps.
- Once the loop is complete, return the value of `b`.

## Complexity
- Time complexity:
$$O(n)$$

- Space complexity:
$$O(1)$$

## Code
```swift
class Solution {
    func climbStairs(_ n: Int) -> Int {
        var a = 1
        var b = 2
        
        if n == 1 { return a }
        if n == 2 { return b }
        
        for i in 2..<n {
            let tmp = b
            b = a + b
            a = tmp
        }
        
        return b
    }
}
```
