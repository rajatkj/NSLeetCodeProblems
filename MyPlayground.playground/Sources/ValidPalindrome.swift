import Foundation

// Problem: https://leetcode.com/problems/valid-palindrome/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 20 mins
// Result: Passed

public func isPalindrome(_ s: String) -> Bool {
    guard !s.isEmpty else { return true }

    let stringArray = Array(s.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted.union(.whitespaces)).joined())
    var firstPointer = 0
    var lastPointer = stringArray.count - 1
    
    var isPalindrome = true
    
    while firstPointer <= lastPointer {
        if stringArray[firstPointer] != stringArray[lastPointer] {
            isPalindrome = false
            break
        }
        firstPointer += 1
        lastPointer -= 1
    }

    return isPalindrome
}
