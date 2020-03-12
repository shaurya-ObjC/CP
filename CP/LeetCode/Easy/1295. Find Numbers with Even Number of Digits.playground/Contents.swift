import UIKit

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        
        var output = 0
        for num in nums {
            let varx = String(num).count
        
            if varx%2 == 0 {
                output += 1
            }
        }
        return output

    }
}
