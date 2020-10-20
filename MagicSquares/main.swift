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
var testColumnValue = [0, 0, 0, 0]
var testRowValue = [0, 0, 0, 0]

// Calculate values of each column
for (_, row) in numbers.enumerated() {
    for (j, column) in row.enumerated() {
        // Convert string into workable Int
        let intColumn = Int(column) ?? 0
        switch j {
        case 0 :
            testColumnValue[0] += intColumn
        case 1 :
            testColumnValue[1] += intColumn
        case 2 :
            testColumnValue[2] += intColumn
        case 3 :
            testColumnValue[3] += intColumn
        default:
            print("failure")
        }
        print(testColumnValue)
    }
}
// Calculate values of each row
for (_, column) in numbers.enumerated() {
    for (i, row) in column.enumerated() {
        // Convert string into workable Int
        let intRow = Int(row) ?? 0
        switch i {
        case 0 :
            testRowValue[0] += intRow
        case 1 :
            testRowValue[1] += intRow
        case 2 :
            testRowValue[2] += intRow
        case 3 :
            testRowValue[3] += intRow
        default:
            print("failure")
        }
        print(testRowValue)
    }
}

//Check if the square is magic by comparing the column array with the row array
let rowSet = Set(testRowValue)
let columnSet = Set(testColumnValue)

if rowSet.count <= 1 && rowSet.count <= 1 && rowSet == columnSet {
    print("magic")
}
else {
    print("not magic")
}

//// Print each row and column of the array, showing values in a formatted manner
//// Iterate over the rows
//for row in 0...numbers.count - 1 {
//
//    // Print gap (a tab character) in top-left corner and headers for columns
//    if row == 0 {
//        print("\t", terminator: "")
//        for column in 0...numbers[row].count - 1 {
//            print("\(column)\t", terminator: "")
//        }
//        print("") // Go to next line
//    }
//
//    // Iterate over the columns
//    for column in 0...numbers[row].count - 1 {
//
//        // Print row header
//        if column == 0 {
//            print("\(row)\t", terminator: "")
//        }
//
//        // Print the actual number at this row and column
//        print("\(numbers[row][column])\t", terminator: "")
//
//    }
//
//    // Now go to the next line
//    print("")
//
//}
//


