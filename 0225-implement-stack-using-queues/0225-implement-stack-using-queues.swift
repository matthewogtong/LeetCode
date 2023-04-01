
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