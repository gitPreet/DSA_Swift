//
//  05_RotateArray.swift
//  DSA
//
//  Created by Preetham Baliga on 21/01/25.
//

/*
 
 Problem -> https://leetcode.com/problems/rotate-array/description/
 
 Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
 
 */

extension Solution {

    func rotate(_ nums: inout [Int], _ k: Int) {
        // usingAdditionalSpace(&nums, k: k)
        usingArrayReverse(&nums, k)
    }

    private func usingAdditionalSpace(_ nums: inout [Int], k: Int) {
        // This approach takes O(n) time complexity and O(n) space complexity

        var newArray = Array(repeating: 0, count: nums.count)
        
        for index in 0 ..< nums.count {
            // We just shift the elements to their new position based on k
            let newIndex = (index + k) % nums.count
            newArray[newIndex] = nums[index]
        }

        nums = newArray
    }

    private func usingArrayReverse(_ nums: inout [Int], _ k: Int) {
        // This approach takes O(n) time with O(1) space complexity.
        if k == nums.count {
            return
        }
        var k = k % nums.count
        reverse(&nums, start: 0, end: nums.count - k - 1)
        reverse(&nums, start: nums.count - k, end: nums.count - 1)
        reverse(&nums, start: 0, end: nums.count - 1)
    }

    private func reverse(_ nums: inout [Int], start: Int, end: Int) {
        var i = start
        var j = end

        while i < j {
            nums.swapAt(i, j)
            i += 1
            j -= 1
        }
    }
}
