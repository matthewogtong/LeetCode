<h2><a href="https://leetcode.com/problems/number-of-1-bits/">191. Number of 1 Bits</a></h2><h3>Easy</h3><hr><div><p>Write a function that takes&nbsp;the binary representation of an unsigned integer and returns the number of '1' bits it has (also known as the <a href="http://en.wikipedia.org/wiki/Hamming_weight" target="_blank">Hamming weight</a>).</p>

<p><strong>Note:</strong></p>

<ul>
	<li>Note that in some languages, such as Java, there is no unsigned integer type. In this case, the input will be given as a signed integer type. It should not affect your implementation, as the integer's internal binary representation is the same, whether it is signed or unsigned.</li>
	<li>In Java, the compiler represents the signed integers using <a href="https://en.wikipedia.org/wiki/Two%27s_complement" target="_blank">2's complement notation</a>. Therefore, in <strong class="example">Example 3</strong>, the input represents the signed integer. <code>-3</code>.</li>
</ul>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> n = 00000000000000000000000000001011
<strong>Output:</strong> 3
<strong>Explanation:</strong> The input binary string <strong>00000000000000000000000000001011</strong> has a total of three '1' bits.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> n = 00000000000000000000000010000000
<strong>Output:</strong> 1
<strong>Explanation:</strong> The input binary string <strong>00000000000000000000000010000000</strong> has a total of one '1' bit.
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> n = 11111111111111111111111111111101
<strong>Output:</strong> 31
<strong>Explanation:</strong> The input binary string <strong>11111111111111111111111111111101</strong> has a total of thirty one '1' bits.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li>The input must be a <strong>binary string</strong> of length <code>32</code>.</li>
</ul>

<p>&nbsp;</p>
<strong>Follow up:</strong> If this function is called many times, how would you optimize it?</div>
</br>

# Solution Details

## Approach
- Initialize a count variable to keep track of the number of '1' bits.
- Iterate through each bit in the integer using a loop that runs 32 times (as the input is a binary string of length 32).
- In each iteration, check if the current bit is '1' using bitwise AND operation.
- If the current bit is '1', increment the count variable.

## Complexity
- Time complexity:
$$O(1)$$

- Space complexity:
$$O(1)$$

## Code
```swift
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var count = 0
        var num = n

        for _ in 0..<32 {
            if num & 1 == 1 {
                count += 1
            }
            num >>= 1
        }
        return count
    }
}
```
