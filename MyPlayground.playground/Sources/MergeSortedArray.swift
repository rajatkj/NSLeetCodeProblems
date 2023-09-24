import Foundation

// Problem: https://leetcode.com/problems/merge-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150
// Time taken: 45 mins
// Solution worked for 15 testcases out of 40
// Result: Failed
// What I learned: I thought about the array from the index 0, also, didn't think if numbers in second array are greater than the ones in first one it would fail.
// Time complexity: O(m+n) because of the nested for loops
// Space complexity: O(1) because of the use of inout variable and no extra space used.
//public func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//    
//    if m != 0 && n == 0 {
//        return
//    }
//    
//    if m == 0 && n == 0 {
//        nums1 = []
//        return
//    }
//    
//    if m == 0 && n != 0 {
//        nums1 = nums2
//        return
//    }
//    
//    for nIndex in 0...n - 1 {
//        let targetNumber = nums2[nIndex]
//        innerLoop: for mIndex in 0...(m + n) - 1 {
//            if (mIndex >= m && nums1[mIndex] == 0) {
//                
//                nums1[mIndex] = targetNumber
//                break innerLoop
//            } else if nums1[mIndex] <= targetNumber {
//                continue
//            } else {
//                let numberThatNeedsReplacing = nums1[mIndex]
//                
//                if mIndex + 1 < (m + n) {
//                    nums1[mIndex + 1] = numberThatNeedsReplacing
//                }
//                nums1[mIndex] = targetNumber
//                break innerLoop
//            }
//        }
//    }
//}
////
/* What I missed:
 Both arrays are sorted in increasing order
 The result should be sorted in the same manner that means we can start comparing the last elements of both arrays
 and start placing them in the 1st array from the last position.
*/
public func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    // last position in the nums1 array
    var last = m + n - 1
    
    // last position of 1st array
    var mPosition = m - 1
    
    // last position of 2nd array
    var nPosition = n - 1
    
    // We start iterating from the last element until we reach the start of the array
    while (mPosition >= 0 && nPosition >= 0) {
        // if the last element of first array is greater than the last element of second array, put the greater number at the end of first array.
        // decrement the array index which had greater element.
        // and vice versa
        if nums1[mPosition] > nums2[nPosition] {
            nums1[last] = nums1[mPosition]
            mPosition -= 1
        } else {
            nums1[last] = nums2[nPosition]
            nPosition -= 1
        }
        // we decrement last regardless because the largest number is at its position.
        last -= 1
    }

    // In the end we iterate over remaining elements of the second array and put them in first, if there are any left.
    while nPosition >= 0 {
        nums1[last] = nums2[nPosition]
        nPosition -= 1
        last -= 1
    }
}
