//
//  01_PathSum2.swift
//  DSA
//
//  Created by Preetham Baliga on 29/05/25.
//

/*
 
 Problem -> https://leetcode.com/problems/path-sum-ii/
 
 Given the root of a binary tree and an integer targetSum, return all root-to-leaf paths where the sum of the node values in the path equals targetSum. Each path should be returned as a list of the node values, not node references.

 A root-to-leaf path is a path starting from the root and ending at any leaf node. A leaf is a node with no children.
 
*/

import Foundation

extension Solution {

    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        var result = [[Int]]()
        var currentPath = [Int]()

        func dsa(node: TreeNode?, currentSum: Int) {

            guard let node else { return }
            currentPath.append(node.val) // Add the latest visited node to current Path

            let newSum = currentSum + node.val

            if node.left == nil && node.right == nil && newSum == targetSum {
                // We have reached the leaf node, so check if the currentSum is equal to target
                // If yes, add the currentPath to the result
                result.append(currentPath)
            } else {
                // Else continue with depth first search.
                dsa(node: node.left, currentSum: newSum)
                dsa(node: node.right, currentSum: newSum)
            }

            currentPath.removeLast() // backtrack
        }

        dsa(node: root, currentSum: 0)
        return result
    }
}
