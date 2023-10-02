import Foundation

// Problem: https://leetcode.com/problems/length-of-last-word/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 45 mins
// Result: Failed
// What I Learned: Trusting the solution I come up with and incrementally approach optimisation. Sometimes simple solution is the right one.
public func lengthOfLastWord(_ s: String) -> Int {
    var lengthOfWord = 0
    let arrayForString = Array(s)
    
    for character in s.reversed() {
        
        if character != " " {
            lengthOfWord += 1
        } else if lengthOfWord > 0 {
            return lengthOfWord
        }
    }
    
    return lengthOfWord
}
