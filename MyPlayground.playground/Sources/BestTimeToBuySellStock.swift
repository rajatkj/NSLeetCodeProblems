import Foundation

// Problem: https://leetcode.com/problems/best-time-to-buy-and-sell-stock/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 30 mins
// Result: Failed
// What I Learned: Two pointer solutions, Sliding window. Kandane's algorithm(max contiguous subarray, will revisit it later).
//public func maxProfit(_ prices: [Int]) -> Int {
//    if prices.count == 1 {
//        return 0
//    }
//    
//    var highestPrice = prices[0]
//    var highIndex = 0
//    for index in 1...prices.count - 1 {
//        if prices[index] > highestPrice {
//            highestPrice = prices[index]
//            highIndex = index
//        }
//    }
//    
//    if highIndex == 0 {
//        return 0
//    }
//    
//    var lowIndex = highIndex
//    var lowestPrice = prices[highIndex]
//    
//    while lowIndex >= 0 {
//        if prices[lowIndex] <= lowestPrice {
//            lowestPrice = prices[lowIndex]
//        }
//        lowIndex -= 1
//    }
//    
//    return highestPrice - lowestPrice
//}
public func maxProfit(_ prices: [Int]) -> Int {
    var lowestDay = 0
    var highestDay = 1
    var maxProfit = 0
    
    while highestDay <= prices.count - 1 {
        let currentProfit = prices[highestDay] - prices[lowestDay]
        if currentProfit < 0 {
            lowestDay = highestDay
        }
        if currentProfit > maxProfit {
            maxProfit = currentProfit
        }
        highestDay += 1
    }
    
    return maxProfit
}
