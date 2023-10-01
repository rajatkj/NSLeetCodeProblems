import Foundation


// Problem: https://leetcode.com/problems/roman-to-integer/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 45 mins
// Result: Passed
// What I learned: Took more time becuase missed one of the conditions. 
public func romanToInt(_ s: String) -> Int {
    let romanDict = [ "I":1,
                      "V":5,
                      "X":10,
                      "L":50,
                      "C":100,
                      "D":500,
                      "M":1000
    ]
    let subtractionCases = ["I", "X", "C"]
    let subtractionCaseValues = ["IV": 4, "IX": 9, "XL": 40, "XC": 90, "CD": 400, "CM": 900]
    
    var result = 0
    var index = 0
    let stringAsArray = Array(s)

    while index <= stringAsArray.count - 1 {

        let characterAtIndex = String(stringAsArray[index])
        
        let isASubtractionCase = subtractionCases.contains(characterAtIndex)
        
        if isASubtractionCase && index + 1 <= stringAsArray.count - 1 {

            let characterAtNextIndex = String(stringAsArray[index + 1])

            let isNextCharacterEligibleForSubtraction = subtractionCaseValues[(characterAtIndex + characterAtNextIndex)] != nil
            
            if isNextCharacterEligibleForSubtraction {
                result += subtractionCaseValues[(characterAtIndex + characterAtNextIndex)]!
                index += 2
            } else {
                result += romanDict[characterAtIndex]!
                index += 1
            }
            
        } else {
            result += romanDict[characterAtIndex]!
            index += 1
        }
    }
    
    return result
}
