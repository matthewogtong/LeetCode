<h2><a href="https://leetcode.com/problems/valid-parentheses/">20. Valid Parentheses</a></h2><h3>Easy</h3><hr><div><p>Given a string <code>s</code> containing just the characters <code>'('</code>, <code>')'</code>, <code>'{'</code>, <code>'}'</code>, <code>'['</code> and <code>']'</code>, determine if the input string is valid.</p>

<p>An input string is valid if:</p>

<ol>
	<li>Open brackets must be closed by the same type of brackets.</li>
	<li>Open brackets must be closed in the correct order.</li>
	<li>Every close bracket has a corresponding open bracket of the same type.</li>
</ol>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input:</strong> s = "()"
<strong>Output:</strong> true
</pre>

<p><strong class="example">Example 2:</strong></p>

<pre><strong>Input:</strong> s = "()[]{}"
<strong>Output:</strong> true
</pre>

<p><strong class="example">Example 3:</strong></p>

<pre><strong>Input:</strong> s = "(]"
<strong>Output:</strong> false
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= s.length &lt;= 10<sup>4</sup></code></li>
	<li><code>s</code> consists of parentheses only <code>'()[]{}'</code>.</li>
</ul>
</div>

# Solution Details

# Approach
- Create an empty stack to keep track of opening brackets.
- Traverse the input string one character at a time.
- If the current character is an opening bracket ('(', '{', '['), push it onto the stack.
- If the current character is a closing bracket (')', '}', ']'), check if it matches the most recent opening bracket on the stack. If it does not match, or if the stack is empty, return false.
- At the end, if the stack is empty, return true. Otherwise, return false.

# Complexity
- Time complexity:
$$O(n)$$

- Space complexity:
$$O(n)$$

# Code
```
class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        
        for char in s {
            switch char {
                case "(", "{", "[":
                    stack.append(char)
                case ")":
                    if stack.isEmpty || stack.removeLast() != "(" {
                        return false
                    }
                case "}":
                    if stack.isEmpty || stack.removeLast() != "{" {
                        return false
                    }
                case "]":
                    if stack.isEmpty || stack.removeLast() != "[" {
                        return false
                    }
                default:
                    return false
            }
        }
        return stack.isEmpty
    }
}
```
