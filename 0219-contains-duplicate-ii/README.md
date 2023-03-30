<h2><a href="https://leetcode.com/problems/contains-duplicate-ii/">219. Contains Duplicate II</a></h2><h3>Easy</h3><hr><div><p>Given an integer array <code>nums</code> and an integer <code>k</code>, return <code>true</code> <em>if there are two <strong>distinct indices</strong> </em><code>i</code><em> and </em><code>j</code><em> in the array such that </em><code>nums[i] == nums[j]</code><em> and </em><code>abs(i - j) &lt;= k</code>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [1,2,3,1], k = 3
<strong>Output:</strong> true
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [1,0,1,1], k = 1
<strong>Output:</strong> true
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> nums = [1,2,3,1,2,3], k = 2
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= nums.length &lt;= 10<sup>5</sup></code></li>
	<li><code>-10<sup>9</sup> &lt;= nums[i] &lt;= 10<sup>9</sup></code></li>
	<li><code>0 &lt;= k &lt;= 10<sup>5</sup></code></li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Create a dictionary to store the last index at which each value appears in the array
- Loop through the array and check if the current value exists in the dictionary and if the difference between the current index and the stored index is less than or equal to k
- If the condition is met, return true. Otherwise, update the dictionary with the current index for the current value
- If no duplicate value is found within the range, return false

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the length of the input array nums. We loop through the array once, and dictionary look-up and insertion operations take average O(1) time

- Space complexity:
$$O(n)$$

## Code
```swift
class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var valueToIndex: [Int: Int] = [:]

        for (index, value) in nums.enumerated() {
            if let lastIndex = valueToIndex[value], index - lastIndex <= k {
                return true
            }
            valueToIndex[value] = index
        }

        return false
    }
}
```
