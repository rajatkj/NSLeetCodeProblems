import Foundation

// Problem: https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/description/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 60 mins
// Result: Failed(Couldn't complete)
// Had to look into solutions, Took a lot of time to understand it. Tried Similar solutions to RemoveDuplicatesSortedArray but that wasn't the way to go, slightly different approach.
public func removeDuplicatesII(_ nums: inout [Int]) -> Int {
    
    var targetIndex = 0
    for num in nums {
        if targetIndex < 2 || num > nums[targetIndex - 2] {
            nums[targetIndex] = num
            targetIndex += 1
        }
    }
    return targetIndex
}
