//
//  06_ProductOfArrayExceptSelf.swift
//  DSA
//
//  Created by Preetham Baliga on 22/01/25.
//

/*
 
 Problem -> https://leetcode.com/problems/product-of-array-except-self/description/
 
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.
 
 */

import Foundation

extension Solution {

    func productExceptSelf(_ nums: [Int]) -> [Int] {

        var leftProductArray = [Int](repeating: 1, count: nums.count)
        var rightProductArray = [Int](repeating: 1, count: nums.count)
        var result = [Int](repeating: 1, count: nums.count)

        var left = 1
        for index in 1 ..< nums.count {
            left = left * nums[index - 1]
            leftProductArray[index] = left
        }

        var right = 1
        for index in stride(from: nums.count - 2, through: 0, by: -1) {
            right = right * nums[index + 1]
            rightProductArray[index] = right
        }

        for index in 0 ..< nums.count {
            result[index] = leftProductArray[index] * rightProductArray[index]
        }

        return result
    }
}
