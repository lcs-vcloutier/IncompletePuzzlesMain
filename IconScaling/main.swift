//
//  main.swift
//  IconScaling
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/icon-scaling.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Icon Scaling")
print("============")

// Set the icon to be scaled
var icon: [[String]] =  [
    ["*", "x", "*"],
    [" ", "x", "x"],
    ["*", " ", "*"],
]


// INPUT
// Get the value of k
let k = Int.collectInput(withPrompt: "Set K:", minimum: 0, maximum: 25)

// PROCESS & OUTPUT

// Show the enlarged icon
for (_, row) in icon.enumerated() {
    for _ in 1...k {
        for (_, column) in row.enumerated() {
                for _ in 1...k {
                    print(column, terminator: "")
                }
            }
        // Go to a new line
        print("")
    }
}
