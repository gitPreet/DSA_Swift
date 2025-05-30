//
//  01_MoveZeroes.swift
//  DSA
//
//  Created by Preetham Baliga on 17/01/25.
//

/*

 Problem -> https://leetcode.com/problems/move-zeroes/

 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.

 */

import Foundation

extension Solution {

    func moveZeroes(_ nums: inout [Int]) {
        var x = 0, y = 0 // Two-pointers

        while y < nums.count {

            if nums[x] != 0 && nums[y] != 0 {
                x += 1
                y += 1
            } else if nums[x] == 0 && nums[y] == 0 {
                y += 1
            } else {
                // Swap numbers at x and y index
                nums.swapAt(x, y)
                x += 1
                y += 1
            }
        }
    }
}
