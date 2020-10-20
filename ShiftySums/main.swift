//
//  main.swift
//  Shifty Sums
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/shifty-sums.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Shifty Sums")
print("===========")

// INPUT

// Get the number to be shifted
let n = Int.collectInput(withPrompt: "SET N:",
                           minimum: 0,
                           maximum: nil)

// How many times should we shift?
let k = Int.collectInput(withPrompt: "SET K",
                           minimum: 0,
                           maximum: nil)
// PROCESS

// Shift the given number "k" number of times
var output = n

switch k {
case 1:
    output += n * 10
case 2:
    output += n * 10
    output += n * 10 * 10
case 3:
    output += n * 10
    output += n * 10 * 10
    output += n * 10 * 10 * 10
case 4:
    output += n * 10
    output += n * 10 * 10
    output += n * 10 * 10 * 10
    output += n * 10 * 10 * 10 * 10
case 5:
    output += n * 10
    output += n * 10 * 10
    output += n * 10 * 10 * 10
    output += n * 10 * 10 * 10 * 10
    output += n * 10 * 10 * 10 * 10 * 10
default:
    print("RERUN AND ENTER A NUMBER BETWEEN 1-5")
}

// OUTPUT
print(output)

