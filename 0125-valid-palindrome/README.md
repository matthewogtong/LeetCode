<h2><a href="https://leetcode.com/problems/valid-palindrome/">125. Valid Palindrome</a></h2><h3>Easy</h3><hr><div><p>A phrase is a <strong>palindrome</strong> if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.</p>

<p>Given a string <code>s</code>, return <code>true</code><em> if it is a <strong>palindrome</strong>, or </em><code>false</code><em> otherwise</em>.</p>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> s = "A man, a plan, a canal: Panama"
<strong>Output:</strong> true
<strong>Explanation:</strong> "amanaplanacanalpanama" is a palindrome.
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> s = "race a car"
<strong>Output:</strong> false
<strong>Explanation:</strong> "raceacar" is not a palindrome.
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> s = " "
<strong>Output:</strong> true
<strong>Explanation:</strong> s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 2 * 10<sup>5</sup></code></li>
	<li><code>s</code> consists only of printable ASCII characters.</li>
</ul>
</div>
</br>

# Solution Details

## Approach
- First, we need to convert the given string to lowercase using the `lowercased()` method in Swift.
- Next, we can remove all non-alphanumeric characters using regular expressions and the `replacingOccurrences()` method. We can use the regular expression `"[^a-z0-9]"` to match any character that is not a lowercase letter or a digit.
- Finally, we can check if the resulting string is equal to its reverse using the `reversed()` method and the `==` operator.

## Complexity
- Time complexity:
$$O(n)$$

- Space complexity:
$$O(n)$$

## Code
```swift
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let lowercaseString = s.lowercased()
        let alphanumericString = lowercaseString.replacingOccurrences(of: "[^a-z0-9]", with: "", options: .regularExpression)
        return alphanumericString == String(alphanumericString.reversed())
    }
}
```
