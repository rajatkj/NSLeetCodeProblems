import Foundation


// Problem: https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 45 mins
// Result: Failed(Couldn't complete)
// Checked the solutions but still don't understand
public func strStr(_ haystack: String, _ needle: String) -> Int {
        
    if needle.count > haystack.count {
        return -1
    }
    
    let needleArray = Array(needle)
    let haystackArray = Array(haystack)
    
    if needleArray.count == 1 && haystackArray.count == 1 {
        return needleArray[0] == haystackArray[0] ? 0 : -1
    }
    var nIndex = 0
    
    for index in 0...haystackArray.count - 1 {

        print("\(haystackArray)")
        if haystackArray[index] == needleArray[nIndex] {
            nIndex += 1
        } else {
            nIndex = 0
        }
        
        if nIndex == needleArray.count {
            return index - nIndex + 1
        }
    }
    
    return -1
}
