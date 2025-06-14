//
//  02_AllPaths_SourceToTarget.swift
//  DSA
//
//  Created by Preetham Baliga on 14/06/25.
//

/*
 
 Problem -> https://leetcode.com/problems/all-paths-from-source-to-target/description/
 
 Given a directed acyclic graph (DAG) of n nodes labeled from 0 to n - 1, find all possible paths from node 0 to node n - 1 and return them in any order.

 The graph is given as follows: graph[i] is a list of all nodes you can visit from node i (i.e., there is a directed edge from node i to node graph[i][j]).
 
 */

import Foundation

func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {

    var result = [[Int]]()
    var path = [Int]()
    let target = graph.count - 1 // We need to find paths to the node n - 1

    func dfs(node: Int) {
        path.append(node)

        if node == target {
            result.append(path)
        }

        let neighbours = graph[node]
        for neighbour in neighbours {
            dfs(node: neighbour)
        }

        path.removeLast() // backtrackking
    }

    dfs(node: 0)

    return result
}
