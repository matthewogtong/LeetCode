<h2><a href="https://leetcode.com/problems/majority-element/">169. Majority Element</a></h2><h3>Easy</h3><hr><div><p>Given an array <code>nums</code> of size <code>n</code>, return <em>the majority element</em>.</p>

<p>The majority element is the element that appears more than <code>⌊n / 2⌋</code> times. You may assume that the majority element always exists in the array.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>
<pre><strong>Input:</strong> nums = [3,2,3]
<strong>Output:</strong> 3
</pre><p><strong class="example">Example 2:</strong></p>
<pre><strong>Input:</strong> nums = [2,2,1,1,1,2,2]
<strong>Output:</strong> 2
</pre>
<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>n == nums.length</code></li>
	<li><code>1 &lt;= n &lt;= 5 * 10<sup>4</sup></code></li>
	<li><code>-10<sup>9</sup> &lt;= nums[i] &lt;= 10<sup>9</sup></code></li>
</ul>

<p>&nbsp;</p>
<strong>Follow-up:</strong> Could you solve the problem in linear time and in <code>O(1)</code> space?</div>

</br>

# Solution Details

## Approach
- Initialize a `candidate` variable to store the current majority element and a count variable to track the occurrence of the candidate
- Iterate through the array, updating the `candidate` and `count` variables based on the current element
- If the count is zero, set the current element as the new candidate and reset the count to 1
- If the current element matches the candidate, increment the count; otherwise, decrement the count

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the length of the input array

- Space complexity:
$$O(1)$$ - solution only uses constant addiotnal space for `candidate` and `count` variables`

## Code
```swift
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate: Int?
        var count = 0
        
        for num in nums {
            if count == 0 {
                candidate = num
            }
            count += (num == candidate) ? 1 : -1
        }
        
        return candidate!
    }
}
```
