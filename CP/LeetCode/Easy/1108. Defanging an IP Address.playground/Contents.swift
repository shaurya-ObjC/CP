import UIKit

class Solution {
    
    func defangIPaddr(_ address: String) -> String {
        var output : String = ""
        for value in address {
            if value == "."{
                output += "[.]"
            } else {
                output += String(value)
            }
        }
        return output
    }
    
//    Swift Way
//    func defangIPaddr(_ address: String) -> String {
//        return address.replacingOccurrences(of: ".", with: "[.]")
//    }
}

Solution().defangIPaddr("1.1.1.1")
Solution().defangIPaddr("255.100.50.0")
