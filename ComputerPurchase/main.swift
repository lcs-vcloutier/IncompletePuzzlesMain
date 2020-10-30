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


// INPUT & PROCESS

// Find out how many computers we will compare specs for
let numberOfSpecs =  Int.collectInput(withPrompt: "How many specs will be provided?", minimum: 0, maximum: 10)

var specs = ["": 0]

// Function to get input & do equation logic
func getInput(arrayName : String, inputName : String) {
    var arrayName = [""]
    let inputName = readLine()!
    arrayName.append(contentsOf: inputName.components(separatedBy: " "))
    // Assign dictionary pair for name with its value according to equation
    specs[arrayName[1]] = Int(arrayName[2])! * 2 + Int(arrayName[3])! * 3 + Int(arrayName[4])!
}

// Get the specs for n different computers
for i in 0...numberOfSpecs - 1 {
    print("Spec \(i+1)?")
    getInput(arrayName: "array\(i)", inputName: "input\(i)")
}

// Find key of largest number in the dictionary
var largest = 0
var nameOfLargest = ""
for (key, value) in specs {
    if value >= largest {
        largest = value
        nameOfLargest = key
    }
}

//OUTPUT
print("The best computer for you \(nameOfLargest)")
