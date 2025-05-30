//
//  03_RemoveDuplicates.swift
//  DSA
//
//  Created by Preetham Baliga on 19/01/25.
//

/*
 
 Problem -> https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/
 
 Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.

 Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:

 Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
 Return k.
 
 */

import Foundation

extension Solution {

    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0, j = 0

        while j < nums.count {
            if nums[j] == nums[i] {
                j += 1
            } else {
                i += 1
                nums[i] = nums[j]
            }
        }

        return i + 1
    }
}
