import Foundation

// Problem: https://leetcode.com/problems/longest-common-prefix/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 40 mins
// Result: Passed
// What I Learned: Sorting the array would allows us to only compare first and last element.
public func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 1 { return strs[0] }
    
    var result = ""
    var stringUnderComparison = ""
    var lowestCountString = Int.max
    
    for str in strs {
        if str.isEmpty { return "" }
        lowestCountString = str.count < lowestCountString ? str.count : lowestCountString
    }
    let firstString = strs[0]
    
    for index in 0...lowestCountString - 1 {
        
        let charAtIndex = firstString[firstString.index(firstString.startIndex, offsetBy: index)]

        stringUnderComparison = String(charAtIndex)
        for str in strs {
            let strAtIndex = String(str[str.index(str.startIndex, offsetBy: index)])
            if strAtIndex != stringUnderComparison {
                return result
            }
        }
        result += stringUnderComparison
    }
    
    return result
}
