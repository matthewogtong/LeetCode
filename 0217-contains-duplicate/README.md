<h2><a href="https://leetcode.com/problems/contains-duplicate/">217. Contains Duplicate</a></h2><h3>Easy</h3><hr><div><p>Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.</p>
</br>

# Solution Details

## Approach
- Utilize a Set to store distinct elements from the input array
- Iterate through the input array
- Check if the current element is already in the Set; if it is, return true (duplicate found)
- Otherwise, add the element to the Set
- If the loop completes without finding any duplicates, return false

## Complexity
- Time complexity:
$$O(n)$$

- Space complexity:
$$O(n)$$

## Code
```swift
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var uniqueElements = Set<Int>()
    
        for num in nums {
            if uniqueElements.contains(num) {
                return true
            } else {
                uniqueElements.insert(num)
            }
        }
        
        return false
    }
}
```
