//
//  main.swift
//  ComputerPurchase
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/computer-purchase.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Computer Purchase")
print("=================")

// NOTE: Completing Magic Squares (or at least having tried the starter code)
//       is recommended before trying this puzzle. 👀 at lines 28 and 36.
struct ComputerScore {
    
    // Regular properties to track RAM
    var name: String = ""
    // Regular properties to track RAM
    var r: Int = 0
    // Regular properties to track CPU speed
    var s: Int = 0
    // Regular properties to track Disk Drive Space
    var d: Int = 0
    
    // Computed property to determine which computer is best (higher number the better)
    var totalPoints: Int {
        return r * 2 + s * 3 + d
    }
}
// INPUT

// Find out how many computers we will compare specs for
let numberOfSpecs =  Int.collectInput(withPrompt: "How many specs will be provided?", minimum: 0, maximum: 10)

// Get the specs for "n" different computers
for i in 0...numberOfSpecs {
    print("Spec \(i)?")
    //build a struct in advance itll be easier
// no error checking needed etc, see document
}

// PROCESS


// OUTPUT

