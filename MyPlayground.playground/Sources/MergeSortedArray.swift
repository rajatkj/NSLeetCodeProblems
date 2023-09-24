import Foundation

public func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    if m != 0 && n == 0 {
        return
    }
    
    if m == 0 && n == 0 {
        nums1 = []
        return
    }
    
    if m == 0 && n != 0 {
        nums1 = nums2
        return
    }
    
    for nIndex in 0...n - 1 {
        let targetNumber = nums2[nIndex]
        innerLoop: for mIndex in 0...(m + n) - 1 {
            if (mIndex >= m && nums1[mIndex] == 0) {
                
                nums1[mIndex] = targetNumber
                break innerLoop
            } else if nums1[mIndex] <= targetNumber {
                continue
            } else {
                let numberThatNeedsReplacing = nums1[mIndex]
                
                if mIndex + 1 < (m + n) {
                    nums1[mIndex + 1] = numberThatNeedsReplacing
                }
                nums1[mIndex] = targetNumber
                break innerLoop
            }
        }
    }
}
