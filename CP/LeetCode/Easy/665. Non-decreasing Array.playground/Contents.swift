import UIKit

class Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        
        var possibility = 0
        var maxV : Int!

        var previousP  = Int.min
        
        for i in stride(from: 1, to: nums.count, by: 1) {
            let current = nums[i]
            let previous = nums[i-1]
            
            if current <= previous {
                possibility += 1
            }
            
            if possibility == 0 {
                maxV = max(current, previous)
            } else if possibility >= 2 {
                return false
            } else {
                if maxV != nil {
                    if current <= maxV {
                        return false
                    }
                }
            }
            print(maxV ?? 0, current,previous)
        }
        
        return true
    }
}


//assert(!Solution().checkPossibility([3,4,2,3]))
//assert(Solution().checkPossibility([4,2,3]))
//assert(!Solution().checkPossibility([4,2,1]))
assert(Solution().checkPossibility([-1,4,2,3]))



