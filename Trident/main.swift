//
//  Trident
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/trident.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Trident")
print("=======")

// INPUT

// Get tine length
print("Enter tine length:")
print("   ", terminator: "")
let tineLength = Int(readLine()!)!

// Get tine spacing
print("Enter tine spacing:")
print("   ", terminator: "")
let spacing = Int(readLine()!)!

// Get handle spacing
print("Enter handle length:")
print("   ", terminator: "")
let handle = Int(readLine()!)!

// OUTPUT

// Produce top of trident according to length given
for _ in 1...tineLength {
    // Print the tines
    for _ in 1...3 {
        
        // Print part of a tine
        print("*", terminator: "")
        
        // Print space between tines
        for _ in 1...spacing {
            print(" ", terminator: "")
        }
        
    }
    // Go to next line of output
    print("")
}
// Print bottom section
for _ in 1...(3 + spacing*2) {
    print("*", terminator: "")
}
// Go to next line of output
print("")

for _ in 1...handle {
    // Print the empty spaces
    for _ in 1...(1+spacing) {
        print(" ", terminator: "")
    }
    // Print the handle
    print("@", terminator: "")
    // Go to next line of output
    print("")
}
