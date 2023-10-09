import Foundation

// Problem: https://leetcode.com/problems/is-subsequence/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 25 mins
// Result: Passed

public func isSubsequence(_ s: String, _ t: String) -> Bool {
    var sPointer = 0

    if s.isEmpty { return true }
    
    let sArray = Array(s)
    let tArray = Array(t)
    
    for char in tArray {
        if sArray[sPointer] == char {
            sPointer += 1
            if sPointer == sArray.count {
                return true
            }
        }
    }
    return false
}
