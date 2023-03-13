<h2><a href="https://leetcode.com/problems/single-number/">136. Single Number</a></h2><h3>Easy</h3><hr><div><p>Given a <strong>non-empty</strong>&nbsp;array of integers <code>nums</code>, every element appears <em>twice</em> except for one. Find that single one.</p>

<p>You must&nbsp;implement a solution with a linear runtime complexity and use&nbsp;only constant&nbsp;extra space.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [2,2,1]
<strong>Output:</strong> 1
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [4,1,2,1,2]
<strong>Output:</strong> 4
</pre><p><strong class="example">Example 3:</strong></p>
<pre><strong>Input:</strong> nums = [1]
<strong>Output:</strong> 1
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 3 * 10<sup>4</sup></code></li>
	<li><code>-3 * 10<sup>4</sup> &lt;= nums[i] &lt;= 3 * 10<sup>4</sup></code></li>
	<li>Each element in the array appears twice except for one element which appears only once.</li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Use a set to keep track of the unique elements in the array
- Iterate over the array and add each element to the set if it doesn't already exist
- If it does exist, remove it from the set

## Complexity
- Time complexity:
$$O(n)$$

- Space complexity:
$$O(n)$$

## Code
```swift
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        for num in nums {
            if set.contains(num) {
                set.remove(num)
            } else {
                set.insert(num)
            }
        }
        return set.first!
    }
}
```
