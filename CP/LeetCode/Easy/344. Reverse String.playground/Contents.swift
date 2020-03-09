import UIKit

class Solution {
    func reverseString(_ s: inout [String]) {
        
        // Another Way
//        let count = s.count - 1
//
//        for index in 0..<s.count/2 {
//            let last = s[count-index]
//            s[count-index] = s[index]
//            s[index] = last
//
//            if ((index*2 >= count) || ((index*2 + 1) == count)) {
//                break
//            }
//        }
        
        
        
        // One Way
        var left = 0
        var right = s.count - 1
        
        while left < right  {
//            let rVal = s[right]
//            s[right] = s[left]
//            s[left] = rVal
            
            (s[left], s[right]) = (s[right], s[left])

            
            right -= 1
            left += 1
            
            
        }
        
        
    }
}

var chars = ["H", "A", "B", "S", "O"]
Solution().reverseString(&chars)

