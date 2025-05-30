//
//  02_MajorityElement.swift
//  DSA
//
//  Created by Preetham Baliga on 18/01/25.
//

/*
 Problem -> https://leetcode.com/problems/majority-element/description/
 
 Given an array nums of size n, return the majority element.
 
 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 Follow-up: Could you solve the problem in linear time and in O(1) space?
 
 */

import Foundation

extension Solution {

    func majorityElement(_ nums: [Int]) -> Int {
        return usingMooresAlgorithm(nums)
    }

    private func usingSorting(_ nums: [Int]) -> Int {
        // This approach has a time complexity of O(n log n) and a space complexity of O(n)

        let sortedNums = nums.sorted()
        return sortedNums[nums.count / 2]
    }

    private func usingMooresAlgorithm(_ numbers: [Int]) -> Int {
        // This approach has linear time complexity O(n) and space complexity of O(1)

        var candidate = numbers[0]
        var count = 0

        for number in numbers {
            if count == 0 {
                candidate = number
                count += 1
            } else if candidate == number {
                count += 1
            } else {
                count -= 1
            }
        }

        return candidate
    }
}
