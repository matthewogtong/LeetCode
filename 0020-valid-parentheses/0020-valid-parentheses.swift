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