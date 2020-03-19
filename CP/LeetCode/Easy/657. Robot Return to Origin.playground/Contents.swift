import UIKit


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        
        var arr:[Int] = [Int]()
        
        var runNode: ListNode? = head
        while runNode != nil {
            arr.append(runNode?.val ?? -1)
            runNode = runNode?.next
        }
        
        return Int(arr
            .map { String($0) }
            .joined(separator: ""),
                   radix:2
            ) ?? -1
        
        
//        var result: Int = 0
//        var current: ListNode? = head
//        while let c = current {
//            result = (result << 1) | c.val
//            current = c.next
//        }
//        return result
//
//
//
//        var current = head
//        var output = ""
//        while let c = current{
//            output = String(c.val) + output
//            current = c.next
//        }
//
//        var result = 0
//
//        for (index, value) in output.enumerated() {
//            result = result + (Int(String(value))! * Int(pow(2.0, Double(index))))
//        }
//        return result
    }
}

