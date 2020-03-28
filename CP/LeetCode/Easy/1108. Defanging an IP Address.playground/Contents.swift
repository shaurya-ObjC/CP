import UIKit

class Solution {
    
    func criticalRouters(numRouters:Int, numLinks:Int, links:[[Int]]) -> [Int]
    {
        
        var graph = [[Int]]()
        var results = [Int]()
        func helper(e: [[Int]], v:Int, total:Int) -> Bool {
            var set = Set<Int>()
            
            var firstAdd = false
            
            
            for i in 0..<e.count {
                
                //ignores edges that have v as starting or ending point
                if(e[i][0] == v || e[i][1] == v){
                    continue
                }
                
                //adding any edge as the starting point, both vertices
                //will fail if the edges are self edges
                if(!firstAdd){
                    set.insert(e[i][0]);
                    set.insert(e[i][1]);
                    firstAdd = true;
                }
                
                //if the next edge has one of the edges already in the set, I can visit it
                if(set.contains(e[i][0]) || set.contains(e[i][1])){
                    set.insert(e[i][0]);
                    set.insert(e[i][1]);
                }
            }
            
            //if total visited elements equals all vertices - removed vertice
            return set.count == total - 1;
        }
        
        for k in 0..<numRouters {
            if(!helper(zzz, k, v)){
                results.append(k)
            }
        }
        
        
    }
}

Solution().criticalRouters(numRouters: 6, numLinks: 5, links: [[1,2], [2,3], [3,4], [4,5], [6,3]])



//
//func numberAmazonGoStores(rows:Int,column:Int, grid:[[Int]])-> Int
//{
//    // WRITE YOUR CODE HERE
//    func checkPoint(_ r: Int, _ c: Int, _ g: [[Int]], _ ch: inout [[Bool]]) -> Int {
//        if r < 0 || c < 0 || r > (g.count - 1) || c > (g[0].count - 1) { return 0 }
//        if g[r][c] == 0 { return 0 }
//        if ch[r][c] { return 0 }
//
//        ch[r][c] = true
//        let _ = checkPoint(r, c - 1, g, &ch)
//        let _ = checkPoint(r - 1, c, g, &ch)
//        let _ = checkPoint(r, c + 1, g, &ch)
//        let _ = checkPoint(r + 1, c, g, &ch)
//
//        return 1
//    }
//
//    // WRITE YOUR CODE HERE
//    let originalGrid = grid
//    guard !originalGrid.isEmpty else { return 0 }
//    var checked = [[Bool]](repeating: [Bool](repeating: false, count: column), count: rows)
//    var result = 0
//    for row in 0..<rows {
//        for col in 0..<column {
//            result += checkPoint(row, col, originalGrid, &checked)
//        }
//    }
//
//    return result
//
//}
