import UIKit

class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        
        var result = [Int]()

        for i in stride(from: 1, to: nums.count, by: 2) {
            let value = nums[i]
            let freq = nums[i-1]
            result += Array.init(repeating: value, count: freq)

        }
        return result
       
        
//        Another Approach
//        var result = [Int]()
//        var i = 0
//        while i + 1 < nums.count {
//            result.append(contentsOf: Array(repeating: nums[i + 1], count: nums[i]))
//            i += 2
//        }
//        return result
    }
}
