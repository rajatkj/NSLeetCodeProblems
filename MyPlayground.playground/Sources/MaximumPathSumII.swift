import Foundation


// Problem: https://projecteuler.net/problem=67
// Time: 20 mins
public func readFile() {
    let fileURL = Bundle.main.url(forResource: "0067_triangle", withExtension: "txt")
    let content = try? String(contentsOf: fileURL!, encoding: String.Encoding.utf8)

    let integerArrayValues = content!.components(separatedBy: "\n").map({ string in
        string.components(separatedBy: " ").compactMap({ Int($0) })
    })
    
    let clock = ContinuousClock()
    var sum = 0
    let result = clock.measure {
        sum = calculateSum(integerArrayValues)
    }
    print(sum)
    print(result)
}


public func calculateSum(_ content: [[Int]]) -> Int {
    
    var targetIndex = 0
    var sum = content.first?.first ?? 0
    
    for array in content {
        if array.count <= 1  {
            continue
        }
        if array[targetIndex] >= array[targetIndex + 1] {
            sum += array[targetIndex]
        } else {
            targetIndex += 1
            sum += array[targetIndex]
        }
    }
    return sum
}
