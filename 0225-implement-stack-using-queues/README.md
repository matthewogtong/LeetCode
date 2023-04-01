<h2><a href="https://leetcode.com/problems/implement-stack-using-queues/">225. Implement Stack using Queues</a></h2><h3>Easy</h3><hr><div><p>Implement a last-in-first-out (LIFO) stack using only two queues. The implemented stack should support all the functions of a normal stack (<code>push</code>, <code>top</code>, <code>pop</code>, and <code>empty</code>).</p>

<p>Implement the <code>MyStack</code> class:</p>

<ul>
	<li><code>void push(int x)</code> Pushes element x to the top of the stack.</li>
	<li><code>int pop()</code> Removes the element on the top of the stack and returns it.</li>
	<li><code>int top()</code> Returns the element on the top of the stack.</li>
	<li><code>boolean empty()</code> Returns <code>true</code> if the stack is empty, <code>false</code> otherwise.</li>
</ul>

<p><b>Notes:</b></p>

<ul>
	<li>You must use <strong>only</strong> standard operations of a queue, which means that only <code>push to back</code>, <code>peek/pop from front</code>, <code>size</code> and <code>is empty</code> operations are valid.</li>
	<li>Depending on your language, the queue may not be supported natively. You may simulate a queue using a list or deque (double-ended queue) as long as you use only a queue's standard operations.</li>
</ul>

<p>&nbsp;</p>
<p><strong class="example">Example 1:</strong></p>

<pre><strong>Input</strong>
["MyStack", "push", "push", "top", "pop", "empty"]
[[], [1], [2], [], [], []]
<strong>Output</strong>
[null, null, null, 2, 2, false]

<strong>Explanation</strong>
MyStack myStack = new MyStack();
myStack.push(1);
myStack.push(2);
myStack.top(); // return 2
myStack.pop(); // return 2
myStack.empty(); // return False
</pre>

<p>&nbsp;</p>
<p><strong>Constraints:</strong></p>

<ul>
	<li><code>1 &lt;= x &lt;= 9</code></li>
	<li>At most <code>100</code> calls will be made to <code>push</code>, <code>pop</code>, <code>top</code>, and <code>empty</code>.</li>
	<li>All the calls to <code>pop</code> and <code>top</code> are valid.</li>
</ul>

<p>&nbsp;</p>
<p><strong>Follow-up:</strong> Can you implement the stack using only one queue?</p>
</div>

</br>

# Solution Details

## Approach
- Use a single queue named `queue` to simulate the stack behavior.
- During the push operation, enqueue the new element to the front of the queue by dequeuing all existing elements and enqueuing them after the new element.
- For the pop operation, simply dequeue from the front of the queue.
- For the top operation, return the element at the front of the queue.
- The empty operation checks if the queue is empty.

## Complexity
- Time complexity:
$$O(1)$$ - for top, pop, and empty operations
$$O(n)$$ - for push operation, where n is the number of elements in the stack

- Space complexity:
$$O(n)$$

## Code
```swift

class MyStack {
    private var queue: [Int]

    init() {
        queue = []
    }

    func push(_ x: Int) {
        let previousCount = queue.count
        queue.append(x)
        for _ in 0..<previousCount {
            let temp = queue.removeFirst()
            queue.append(temp)
        }
    }

    func pop() -> Int {
        return queue.removeFirst()
    }

    func top() -> Int {
        return queue.first ?? -1
    }

    func empty() -> Bool {
        return queue.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */
```
