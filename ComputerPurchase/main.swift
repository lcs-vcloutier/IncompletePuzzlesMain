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
struct ComputerScore  {
    
    // Regular properties to track NAME
    var name: String
    // Regular properties to track RAM
    var r: Int
    // Regular properties to track CPU speed
    var s: Int
    // Regular properties to track Disk Drive Space
    var d: Int
    
    // Computed property to determine which computer is best (higher number the better)
    var totalPoints: Int {
        return r * 2 + s * 3 + d
    }
}
// INPUT

// Find out how many computers we will compare specs for
let numberOfSpecs =  Int.collectInput(withPrompt: "How many specs will be provided?", minimum: 0, maximum: 10)

var roles = ["": 0]

func getInput(arrayName:String, inputName:String) {
    var arrayName = [""]
    let inputName = readLine()!
    arrayName.append(contentsOf: inputName.components(separatedBy: " "))
    roles[arrayName[1]] = Int(arrayName[2])! * 2 + Int(arrayName[3])! * 3 + Int(arrayName[4])!
}
for i in 0...numberOfSpecs {
    
    print("Spec \(i)?")
    getInput(arrayName: "array\(i)", inputName: "input\(i)")
}

var testVar = roles.values.max()

print("The best computer for you \(roles[testVar])")

//// Get the specs for "n" different computers
//var inputArray =  [[]]
//
//func getInput(varName:String, computerName:String, n:Int) {
//    let varName = readLine()!
//    inputArray.append(varName.components(separatedBy: " "))
//    let computerName = ComputerScore(name: inputArray[n], r: Int(inputArray[n+1])!, s:Int(inputArray[n+2])!, d:Int(inputArray[n+3])!)
//    print(computerName)
//}
//
//for i in 0...numberOfSpecs - 1 {
//    print("Spec \(i+1)?")
//    getInput(varName: "Spec\(i+1)", computerName: "comp\(i+1)", n: i)
//}

//print(inputArray)
//
//// PROCESS
////print(comp1.totalPoints)
////print(comp2.totalPoints)
////for _ in numbers
//// OUTPUT
//print("The best computer for you is \(numberOfSpecs)")
//
//
