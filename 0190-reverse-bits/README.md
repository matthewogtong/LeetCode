<h2><a href="https://leetcode.com/problems/reverse-bits/">190. Reverse Bits</a></h2><h3>Easy</h3><hr><div><p>Reverse bits of a given 32 bits unsigned integer.</p>
</br>

# Solution Details

## Approach
- Initialize a variable `result` to store the reversed bits
- Iterate through the input integer's bits from least significant to most significant (32 times)
- For each iteration, shift the result left by one bit, and use a bitwise AND operation to extract the least significant bit from the input integer
- Add the extracted bit to the result, and right-shift the input integer by one bit

## Complexity
- Time complexity:
$$O(1)$$ - we always iterate over 32 bits

- Space complexity:
$$O(1)$$

## Code
```swift
class Solution {
    func reverseBits(_ n: Int) -> Int {
        var result = 0
        var input = n
        for _ in 0..<32 {
            result <<= 1
            result |= input & 1
            input >>= 1
        }
        return result
    }
}
```
