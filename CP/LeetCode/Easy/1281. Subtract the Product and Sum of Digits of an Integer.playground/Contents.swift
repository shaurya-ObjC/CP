import UIKit

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        
        let digits = String(n).map { Int(String($0))! * 2 }
        return digits.reduce(1, *) - digits.reduce(0, +)
       
        
//        //Normal
//        var num = n
//        var product = 1
//        var sum = 0
//        while num != 0 {
//            let val = num%10
//            product = product * val
//            sum = sum + val
//
//            num = num/10
//        }
//        return product - sum
    }
}

Solution().subtractProductAndSum(231)
Solution().subtractProductAndSum(4421)
