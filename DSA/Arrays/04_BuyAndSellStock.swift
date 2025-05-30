//
//  04_BuyAndSellStock.swift
//  DSA
//
//  Created by Preetham Baliga on 20/01/25.
//

/*

 Problem -> https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 */

import Foundation

extension Solution {

    func maxProfit(_ prices: [Int]) -> Int {

        var maxProfit = 0
        var buyPrice = prices[0]

        for index in 1 ..< prices.count {
            buyPrice = min(buyPrice, prices[index])
            let currentProfit = prices[index] - buyPrice
            maxProfit = max(maxProfit, currentProfit)
        }

        return maxProfit
    }
}
