import Foundation

// Problem: https://leetcode.com/problems/remove-duplicates-from-sorted-array/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 37 mins
// Result: Passed
// Did well in this one, using strategies learned from last one.
public func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count ==  1 {
        return 1
    }
    
    var targetIndex = 0
    
    for num in nums {
        if num > nums[targetIndex] {
            targetIndex += 1
            nums[targetIndex] = num
        }
    }
    
    return targetIndex + 1
}
