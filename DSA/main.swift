//
//  main.swift
//  DSA
//
//  Created by Preetham Baliga on 17/01/25.
//

import Foundation

class Solution {}

let node5 = TreeNode(5)
let node4 = TreeNode(4)
let node8 = TreeNode(8)
node5.left = node4
node5.right = node8

let node11 = TreeNode(11)
node4.left = node11

let node7 = TreeNode(7)
let node2 = TreeNode(2)
node11.left = node7
node11.right = node2

let node13 = TreeNode(13)
node8.left = node13

let node4a = TreeNode(4)
node8.right = node4a

let node5a = TreeNode(5)
let node1 = TreeNode(1)
node4a.left = node5a
node4a.right = node1

_ = Solution().pathSum(node5, 11)
