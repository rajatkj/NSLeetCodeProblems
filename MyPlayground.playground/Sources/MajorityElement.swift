import Foundation

// Problem: https://leetcode.com/problems/majority-element/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 35 mins
// Result: Failed
// What I learned: Moore's voting algorithm, was going in the right direction but couldn't solve it because I didn't know the algo. Had the solution with dictionaries written down.
// If the element appears more than n/2 times it will always be at n/2 position when array is sorted.
public func majorityElement(_ nums: [Int]) -> Int {
    if nums.count == 1 {
        return 0
    }
    
    var majorityElement = 0
    
    var count = 0
    
    for num in nums {
        if count == 0 {
            majorityElement = num
        }
        
        if majorityElement == num {
            count += 1
        } else {
            count -= 1
        }
    }
    return majorityElement
}
