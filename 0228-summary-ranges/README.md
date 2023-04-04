<h2><a href="https://leetcode.com/problems/summary-ranges/">228. Summary Ranges</a></h2><h3>Easy</h3><hr><div><p>You are given a <strong>sorted unique</strong> integer array <code>nums</code>.</p>

<p>A <strong>range</strong> <code>[a,b]</code> is the set of all integers from <code>a</code> to <code>b</code> (inclusive).</p>

<p>Return <em>the <strong>smallest sorted</strong> list of ranges that <strong>cover all the numbers in the array exactly</strong></em>. That is, each element of <code>nums</code> is covered by exactly one of the ranges, and there is no integer <code>x</code> such that <code>x</code> is in one of the ranges but not in <code>nums</code>.</p>

<p>Each range <code>[a,b]</code> in the list should be output as:</p>

<ul>
	<li><code>"a-&gt;b"</code> if <code>a != b</code></li>
	<li><code>"a"</code> if <code>a == b</code></li>
</ul>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> nums = [0,1,2,4,5,7]
<strong>Output:</strong> ["0-&gt;2","4-&gt;5","7"]
<strong>Explanation:</strong> The ranges are:
[0,2] --&gt; "0-&gt;2"
[4,5] --&gt; "4-&gt;5"
[7,7] --&gt; "7"
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> nums = [0,2,3,4,6,8,9]
<strong>Output:</strong> ["0","2-&gt;4","6","8-&gt;9"]
<strong>Explanation:</strong> The ranges are:
[0,0] --&gt; "0"
[2,4] --&gt; "2-&gt;4"
[6,6] --&gt; "6"
[8,9] --&gt; "8-&gt;9"
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>0 &lt;= nums.length &lt;= 20</code></li>
	<li><code>-2<sup>31</sup> &lt;= nums[i] &lt;= 2<sup>31</sup> - 1</code></li>
	<li>All the values of <code>nums</code> are <strong>unique</strong>.</li>
	<li><code>nums</code> is sorted in ascending order.</li>
</ul>
</div>
</br>

# Solution Details

## Approach
- Initialize two pointers, `start` and `end`, both initially set to 0
- Iterate through the `nums` array, incrementing `end` until the next integer is not consecutive with the current integer
- When the consecutive streak breaks, create a range string from the current `start` and `end` pointers and append it to the result array
- Update the `start` pointer to the current `end` pointer, and continue iterating until the end of the array

## Complexity
- Time complexity:
$$O(n)$$ - `n` is the length of the input array, as we ar eiterating through the entire array once

- Space complexity:
$$O(n)$$

## Code
```swift
class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var result: [String] = []
        let n = nums.count
        var start = 0

        while start < n {
            var end = start
            while end + 1 < n && nums[end + 1] == nums[end] + 1 {
                end += 1
            }

            if start == end {
                result.append("\(nums[start])")
            } else {
                result.append("\(nums[start])->\(nums[end])")
            }

            start = end + 1
        }

        return result
    }
}
```
