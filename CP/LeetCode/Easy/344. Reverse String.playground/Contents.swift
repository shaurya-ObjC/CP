import UIKit

class Solution {
    
    func criticalRouters(numRouters:Int, numLinks:Int, links:[[Int]]) -> [Int]
    {
            
            var graph = [[Int]]()
            var results = [Int]()
            var discover = [Int]()
            var low = [Int]()
            var times = Int()
            
            func router(_ child: Int, _ parent: Int) {
                times += 1
                discover[child] = times
                low[child] = times
                
                for node in graph[child] {
                    if (node == parent) {
                        continue
                    }
                    if (discover[node] == 0) {
                        router(node, child)
                        low[child] = min(low[child], low[node])
                        
                        if (low[node] > discover[child]) {
                            results.append(child)
                        }
                    } else {
                        low[child] = min(low[child], discover[node])
                    }
                }
            }
            
            graph = [[Int]](repeating: [Int](), count: numRouters)
            discover = [Int](repeating: 0, count: numRouters)
            low = [Int](repeating: 0, count: numRouters)
            
            //create graph
            for connection in links{
            let p = connection[0]-1
                    let q = connection[1]-1

                graph[p].append(q)
                graph[q].append(p)
            }
            
            //loop n times
            for i in 0..<numRouters {
                if (discover[i] == 0) {
                    router(i, -1)
                }
            }
            
            
            return results
        }
}
Solution().criticalRouters(numRouters: 6, numLinks: 5, links: [[1,2], [2,3], [3,4], [4,5], [6,3]])

