import Foundation

// Problem: https://leetcode.com/problems/rotate-array/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 30 mins
// Result: Passed but Not in place
public func rotate(_ nums: inout [Int], _ k: Int) {
    if k == 0 || k % nums.count == 0 { return }
    
    let numberOfRotations = k % nums.count
    
    var tempArray: [Int] = []
    
    var rIndex = nums.count - numberOfRotations
    
    while rIndex <= nums.count - 1 {
        tempArray.append(nums[rIndex])
        rIndex += 1
    }
    
    for index in 0...nums.count - numberOfRotations - 1 {
        tempArray.append(nums[index])
    }
    
    nums = tempArray
}
