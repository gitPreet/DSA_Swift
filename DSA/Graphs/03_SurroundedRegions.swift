//
//  03_SurroundedRegions.swift
//  DSA
//
//  Created by Preetham Baliga on 14/06/25.
//

import Foundation

extension Solution {

    func solve(_ board: inout [[Character]]) {

        guard !board.isEmpty else { return }
        let rows = board.count
        let cols = board[0].count

        // Identifying the safe rows and colums (one's that are connected to the bonudary)
        for row in 0 ..< rows {
            if board[row][0] == "O" {
                dfs(board: &board, row: row, col: 0)
            }
            if board[row][cols - 1] == "O" {
                dfs(board: &board, row: row, col: cols - 1)
            }
        }

        for col in 0 ..< cols {
            if board[0][col] == "O" {
                dfs(board: &board, row: 0, col: col)
            }
            if board[rows - 1][col] == "O" {
                dfs(board: &board, row: rows - 1, col: col)
            }
        }

        // Replace the non-safe one's with X and safe one's back to O

        for row in 0 ..< rows {
            for col in 0 ..< cols {
                if board[row][col] == "O" {
                    board[row][col] = "X"
                }
                if board[row][col] == "#" {
                    board[row][col] = "O"
                }
            }
        }
    }

    private func dfs(board: inout [[Character]], row: Int, col: Int) {

        guard row >= 0 || row < board.count || col >= 0 || col < board[0].count || board[row][col] != "X" || board[row][col] != "#" else {
            return
        }

        board[row][col] = "#"

        dfs(board: &board, row: row - 1, col: col)
        dfs(board: &board, row: row + 1, col: col)
        dfs(board: &board, row: row, col: col - 1)
        dfs(board: &board, row: row, col: col + 1)
    }
}
