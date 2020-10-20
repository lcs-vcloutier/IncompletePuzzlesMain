//
//  main.swift
//  MagicSquares
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/magic-squares.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Magic Squares")
print("=============")

// INPUT
// Create an empty array to store each row of numbers
// NOTE: Each row will itself be an array, effectively creating a two-dimensional array.
var numbers: [[String]] = []

// Ask for the first row of numbers
// NOTE: This is provided as a String
let line1 = readLine()!

// Now split the first row of numbers using the space character as a delimiter, and then place the resulting array in the 2D array of numbers
// NOTE: Set a breakpoint and use the debugger to see what the "numbers" array contains at this point
numbers.append(line1.components(separatedBy: " "))

// Ask for the second row of numbers
// NOTE: This is provided as a string
let line2 = readLine()!

// Now split the second row of numbers using the space character as a delimiter, and then place the resulting array in the 2D array of numbers
// NOTE: Set a breakpoint and use the debugger to see what the "numbers" array contains at this point
numbers.append(line2.components(separatedBy: " "))

// Ask for the third row of numbers
// NOTE: This is provided as a string
let line3 = readLine()!

// Now split the third row of numbers using the space character as a delimiter, and then place the resulting array in the 2D array of numbers
// NOTE: Set a breakpoint and use the debugger to see what the "numbers" array contains at this point
numbers.append(line3.components(separatedBy: " "))


// Ask for the fourth row of numbers
// NOTE: This is provided as a string
let line4 = readLine()!

// Now split the fourh row of numbers using the space character as a delimiter, and then place the resulting array in the 2D array of numbers
// NOTE: Set a breakpoint and use the debugger to see what the "numbers" array contains at this point
numbers.append(line4.components(separatedBy: " "))

// PROCESS & OUTPUT
//Initialize arrays to keep track of column & row values
var columnValue = [0, 0, 0, 0]
var rowValue = [0, 0, 0, 0]

// Calculate values of each column
for (_, row) in numbers.enumerated() {
    for (j, column) in row.enumerated() {
        // Convert string into workable Int
        let intColumn = Int(column) ?? 0
        switch j {
        case 0 :
            columnValue[0] += intColumn
        case 1 :
            columnValue[1] += intColumn
        case 2 :
            columnValue[2] += intColumn
        case 3 :
            columnValue[3] += intColumn
        default:
            print("failure")
        }
    }
}
// Calculate values of each row
for (_, column) in numbers.enumerated() {
    for (i, row) in column.enumerated() {
        // Convert string into workable Int
        let intRow = Int(row) ?? 0
        switch i {
        case 0 :
            rowValue[0] += intRow
        case 1 :
            rowValue[1] += intRow
        case 2 :
            rowValue[2] += intRow
        case 3 :
            rowValue[3] += intRow
        default:
            print("failure")
        }
    }
}

// Check if the square is magic

// Initialize a set for each array
let rowSet = Set(rowValue)
let columnSet = Set(columnValue)

// Check if sets have only one number & they equal eachother
if rowSet.count <= 1 && rowSet.count <= 1 && rowSet == columnSet {
    print("magic")
}
else {
    print("not magic")
}
