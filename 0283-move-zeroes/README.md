<h2><a href="https://leetcode.com/problems/move-zeroes/">283. Move Zeroes</a></h2><h3>Easy</h3><hr><div><p>Given an integer array <code>nums</code>, move all <code>0</code>'s to the end of it while maintaining the relative order of the non-zero elements.</p>

<p><strong>Note</strong> that you must do this in-place without making a copy of the array.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [0,1,0,3,12]
<strong>Output:</strong> [1,3,12,0,0]
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [0]
<strong>Output:</strong> [0]
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>4</sup></code></li>
	<li><code>-2<sup>31</sup> &lt;= nums[i] &lt;= 2<sup>31</sup> - 1</code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow up:</strong> Could you minimize the total number of operations done?</div>
</br>

# Solution Details

## Approach
- Use two pointers, `left` and `right`, to iterate through the array
- Initialize both pointers to 0
- Iterate through the array using the `right` pointer, looking for non-zero elements
- When a non-zero element is found, swap its value with the value at the `left` pointer and increment the `left` pointer
- Continue iterating until the `right` pointer reaches the end of the array

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the length of the input array

- Space complexity:
$$O(1)$$

## Code
```swift
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var left = 0

        for right in 0..<nums.count {
            if nums[right] != 0 {
                nums.swapAt(left, right)
                left += 1
            }
        }
    }
}
```
