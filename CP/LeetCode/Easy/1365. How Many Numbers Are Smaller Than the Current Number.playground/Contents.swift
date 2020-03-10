import UIKit

class Solution {
    
    //Optimized
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var countOfNums = [Int](repeating: 0, count: 101)
        //since max in this case is 100, you could theoretically just find the max number, and use this instead, but it's just easier in this case to write 101.
        //all these numbers start with 0 occurences: [0,0,0,0.....,0,0] -length=100
        
        for num in nums{
            countOfNums[num] += 1 //Each time you find a number, add this occurence to the counts array
            //[0,1,2,1,0,0,0,0,1] if you use a test case like [8,1,2,2,3]
            // 0 counts of 0, 1 count of 1, 2 of 2, 1 of 3, and 1 of 8.... all the way to 100...
        }
        var sumOfSmallerNums = 0     // start sum as 0, this will keep tally for us.
        var countOfSmallerNums = [Int](repeating: 0, count: 101) //number of smaller numbers than current
        
        for i in 1...100 {
            sumOfSmallerNums += countOfNums[i-1] //this part of counting sort shifts all counts of a number to the right one, to get the correct amount of numbers smaller than it.
            countOfSmallerNums[i] = sumOfSmallerNums //the sum of all numbers smaller than the current number
        }
        var finalArray = [Int](repeating: 0, count: nums.count) //Note, these repeating 0 arrays aren't necessary, but it takes out a block of If,Else statments to check if the sumOfSmallerNums == 0, I haven't checked if it is actually any faster, but it looks cool. (Useful for people using languages without repeating array)
        
        for i in 0..<nums.count{
            finalArray[i] = countOfSmallerNums[nums[i]] //the answer array is the summ array in the order of the initial array
            //So for [8,1,2,2,3] it will return the number of smaller numbers in the same order... [4,0,1,1,3] in this case.
        }
        return finalArray
    }
    
//    //Swift Way
//    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
//        let dict = nums.sorted().enumerated().reduce(into: [Int: Int](), { $0[$1.1] = min($0[$1.1, default: Int.max], $1.0) })
//        return nums.map({ dict[$0, default: 0] })
//    }
//
//    //First Thoughts
//    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
//        var output : [Int] = []
//
//        var totalCount = 0
//        for i in 0..<nums.count{
//            let fixedValue = nums[i]
//            for j in 0..<nums.count {
//                if i == j {
//                    continue
//                }
//
//                let variableValue = nums[j]
//                if fixedValue > variableValue {
//                    totalCount += 1
//                }
//            }
//            output.append(totalCount)
//            totalCount = 0
//        }
//
//        return output
//    }
}

Solution().smallerNumbersThanCurrent([8,1,2,2,3])
Solution().smallerNumbersThanCurrent([6,5,4,8])
Solution().smallerNumbersThanCurrent([7,7,7,7])

