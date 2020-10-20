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
let limit = Int.collectInput(withPrompt: "Enter the speed limit: ",
                           minimum: 0,
                           maximum: nil)
// Ask for the speed limit
let speed = Int.collectInput(withPrompt: "Enter the car's speed: ",
                           minimum: 0,
                           maximum: nil)

// Set range for 100$ fine
let range1 = limit+1...limit+20

// Set range for 270$ fine
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

