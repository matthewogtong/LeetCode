<h2><a href="https://leetcode.com/problems/add-digits/">258. Add Digits</a></h2><h3>Easy</h3><hr><div><p>Given an integer <code>num</code>, repeatedly add all its digits until the result has only one digit, and return it.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> num = 38
<strong>Output:</strong> 2
<strong>Explanation:</strong> The process is
38 --&gt; 3 + 8 --&gt; 11
11 --&gt; 1 + 1 --&gt; 2 
Since 2 has only one digit, return it.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> num = 0
<strong>Output:</strong> 0
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= num &lt;= 2<sup>31</sup> - 1</code></li>
</ul>

<p>&nbsp;</p>
<p><strong>Follow up:</strong> Could you do it without any loop/recursion in <code>O(1)</code> runtime?</p>
</div>
</br>


# Solution Details

## Approach
- Create a function `addDigits(_ num: Int) -> Int` to handle the logic of adding digits and returning the single-digit result
- Inside the function, create a mutable variable `currentNum` initially set to the input `num`
- Use a while loop to keep iterating until `currentNum` is reduced to a single digit
- Within the loop, convert the `currentNum` into an array of its digits, then sum the digits and assign the result back to `currentNum`
- After the loop, return `currentNum` as the final single-digit result

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the number of digits in the input number

- Space complexity:
$$O(1)$$

## Code
```swift
class Solution {
    func addDigits(_ num: Int) -> Int {
        var currentNum = num

        while currentNum > 9 {
            let digits = String(currentNum).compactMap { Int(String($0)) }
            currentNum = digits.reduce(0, +)
        }

        return currentNum
    }
}
```
