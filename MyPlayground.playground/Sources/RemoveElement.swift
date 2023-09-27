import Foundation

// Problem: https://leetcode.com/problems/remove-element/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 22 mins
// Result: Passed
// What I learned: Consider the edge cases where element count is 1 or 0 and where all elements are same.
public func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    if nums.count == 0 {
        return 0
    }
    if nums.count == 1 && nums[0] == val {
        nums = []
        return 0
    }
    
    var firstIndex = 0
    var lastIndex = nums.count - 1
    
    while firstIndex <= lastIndex {
        if nums[lastIndex] == val {
            nums.remove(at: lastIndex)
            lastIndex -= 1
            continue
        }
        
        if nums[firstIndex] == val {
            nums[firstIndex] = nums[lastIndex]
            nums.remove(at: lastIndex)
            lastIndex -= 1
            firstIndex += 1
        } else {
            firstIndex += 1
        }
    }
    
    return nums.count
}
