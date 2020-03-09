import UIKit

class Solution {
    func numberOfSteps (_ num: Int) -> Int {
        
        var totalSteps = 0
        var value = num
        while value != 0 {
            if value%2 == 0 {
                value = value/2
            } else {
                value = value - 1
            }
            totalSteps += 1
        }
        
        return totalSteps
        
    }
}

Solution().numberOfSteps(14)
Solution().numberOfSteps(8)
Solution().numberOfSteps(123)
