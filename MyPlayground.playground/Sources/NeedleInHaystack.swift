import Foundation


// Problem: https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 45 mins
// Result: Failed(Couldn't complete)
// Checked the solutions but still don't understand
// What I learned: Some solutions use the same technique as some of the previous one(Sliding window here). Also, Stop over optimising
// Updated code: We don't wanna check all indexes, so we can subtract the needle length from haystack length that will give us the iteration length
public func strStr(_ haystack: String, _ needle: String) -> Int {
        
    if needle.count > haystack.count {
        return -1
    }
    
    if needle.count == haystack.count {
        return needle == haystack ? 0 : -1
    }
    
    var haystackIndex = haystack.startIndex
    
    for index in 0...haystack.count-needle.count {
        
        let stringIndex = haystack.index(haystackIndex, offsetBy: needle.count)
        if haystack[haystackIndex..<stringIndex] == needle {
            return index
        }
        
        haystackIndex = haystack.index(after: haystackIndex)
    }
    
    return -1
}
