import UIKit
class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        
        var x = 0
             var y = 0
             
             for move in moves {
                 
                 switch move {
                     case "L": x = x-1
                     case "R": x = x+1
                     case "U": y = y+1
                     case "D": y = y-1
                     default : break
                 }
             }
             
             if (x == 0 && y == 0) {
                 return true
             }
             
             return false
        
        
        return moves.reduce(into: (0, 0)) {
            switch $1 {
            case "R": $0.0 += 1
            case "L": $0.0 += -1
            case "U": $0.1 += 1
            case "D": $0.1 += -1
            default: break
            }
        } == (0, 0)
        
    }
}

Solution().judgeCircle("LRUD")
