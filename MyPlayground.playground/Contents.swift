import SwiftUI
import Foundation


var array1 = [2,2,3,0,0,0]
var array2: [Int] = [2,3,4]

merge(&array1, 3, array2, 3)

print(array1)
