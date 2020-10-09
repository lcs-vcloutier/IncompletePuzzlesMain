//
//  main.swift
//  ISBN
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/ISBN.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("ISBN")
print("====")

// INPUT

// Set the first 10 digits
let first10Digits = "9780921418"

// Set the sum of just the first 10 digits, which are always 9780921418
let first10DigitsSum = 91

// Ask for the 11th digit
print("Digit 11? ", terminator: "")
let digit11 = Int(readLine()!)!

// Ask for the 12th digit
print("Digit 12? ", terminator: "")
let digit12 = Int(readLine()!)!

// Ask for the 13th digit
print("Digit 13? ", terminator: "")
let digit13 = Int(readLine()!)!

// PROCESS & OUTPUT

// Finish calculating the sum including the 11th, 12th, and 13th digits of the ISBN number
let last3digitsSum = digit11 * 1 + digit12 * 3 + digit13 * 1
let totalSum = first10DigitsSum + last3digitsSum

// Print the 1-3 sum for the entire 13-digit ISBN number
print("The 1-3 Sum is \(totalSum)")

// Determine whether this entire ISBN number is valid
let last3digits = "\(digit11)\(digit12)\(digit13)"
if totalSum % 10 == 0 {
    print("The ISBN number 9780921418\(last3digits) is a valid ISBN number.")
}
else {
    print("The ISBN number 9780921418\(last3digits) is not a valid ISBN number.")
}
