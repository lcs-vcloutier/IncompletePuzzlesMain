//
//  main.swift
//  Speeding Is Not Fine
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/speeding-is-not-fine.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Speeding Is Not Fine")
print("====================")

// INPUT

// Ask for the speed limit
print("Enter the speed limit: ", terminator: "")
let limit = Int(readLine()!)!

// Ask for the speed limit
print("Enter the car's speed: ", terminator: "")
let speed = Int(readLine()!)!


let range1 = limit+1...limit+20
let range2 = limit+21...limit+30

// PROCESS AND OUTPUT

// See whether the driver is within the speed limit, and if they are not, see how much they are above the limit.
if speed < limit {
    print("Congratulations, you are within the speed limit!")
}
else if range1 ~= speed {
    print("You are speeding and your fine is $100")
}
else if range2 ~= speed {
    print("You are speeding and your fine is $270")
}
else  {
    print("You are speeding and your fine is $500")
}

