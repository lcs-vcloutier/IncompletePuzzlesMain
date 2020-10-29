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
//struct ComputerScore  {
//
//    // Regular properties to track RAM
//    var name: String = ""
//    // Regular properties to track RAM
//    var r: Int = 0
//    // Regular properties to track CPU speed
//    var s: Int = 0
//    // Regular properties to track Disk Drive Space
//    var d: Int = 0
//
//    // Computed property to determine which computer is best (higher number the better)
//    var totalPoints: Int {
//        return r * 2 + s * 3 + d
//    }
//}
// INPUT

// Find out how many computers we will compare specs for
let numberOfSpecs =  Int.collectInput(withPrompt: "How many specs will be provided?", minimum: 0, maximum: 10)

// Get the specs for "n" different computers
for i in 0...numberOfSpecs - 1 {
    print("Spec \(i+1)?")
    var line1 = readLine()!
    print(line1)
}
var numbers: [[String]] = []
var comp1 = readLine()!
numbers.append(comp1.components(separatedBy: " "))


    
var comp3 = readLine()!
numbers.append(comp3.components(separatedBy: " "))

var comp4 = readLine()!
numbers.append(comp4.components(separatedBy: " "))

func getInput(varName:String) {
    let varName = readLine()!
    numbers.append(varName.components(separatedBy: " "))
}

// INPUT
// Get apples data

// Get bananas data
print(numbers)

// PROCESS
//print(comp1.totalPoints)
//print(comp2.totalPoints)
//for _ in numbers
// OUTPUT
print("The best computer for you is \(numberOfSpecs)")


