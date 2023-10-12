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
    
    let haystackStartIndex = haystack.startIndex
    let needleStartIndex = needle.startIndex
    
    for index in 0...haystack.count-needle.count+1 {

        for needleIndex in 0...needle.count - 1 {
            if haystack[haystack.index(haystackStartIndex, offsetBy: index + needleIndex)] != needle[needle.index(needleStartIndex, offsetBy: needleIndex)] {
                break
            } 
            if needleIndex == needle.count - 1 {
                return index
            }
        }
    }
    
    return -1
}
