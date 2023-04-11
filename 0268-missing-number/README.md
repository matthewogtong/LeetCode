<h2><a href="https://leetcode.com/problems/missing-number/">268. Missing Number</a></h2><h3>Easy</h3><hr><div><p>Given an array <code>nums</code> containing <code>n</code> distinct numbers in the range <code>[0, n]</code>, return <em>the only number in the range that is missing from the array.</em></p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [3,0,1]
<strong>Output:</strong> 2
<strong>Explanation:</strong> n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [0,1]
<strong>Output:</strong> 2
<strong>Explanation:</strong> n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> nums = [9,6,4,2,3,5,7,0,1]
<strong>Output:</strong> 8
<strong>Explanation:</strong> n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>n == nums.length</code></li>
	<li><code>1 &lt;= n &lt;= 10<sup>4</sup></code></li>
	<li><code>0 &lt;= nums[i] &lt;= n</code></li>
	<li>All the numbers of <code>nums</code> are <strong>unique</strong>.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Follow up:</strong> Could you implement a solution using only <code>O(1)</code> extra space complexity and <code>O(n)</code> runtime complexity?</p>
</div>
</br>

# Solution Details

## Approach
- Initialize a variable called ``missingNumber`` to store the missing number from the array.
- Iterate through the `nums` array and perform XOR operation between the index, the corresponding element in the array, and the `missingNumber` variable.
- After iterating through the entire array, the `missingNumber` variable will hold the missing number in the range [0, n].

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the length of the nums array

- Space complexity:
$$O(1)$$ - we only use a consstant amount of additional space to store the missing number

## Code
```swift
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var missingNumber = nums.count
        for (index, num) in nums.enumerated() {
            missingNumber ^= index ^ num
        }
        return missingNumber
    }
}
```
