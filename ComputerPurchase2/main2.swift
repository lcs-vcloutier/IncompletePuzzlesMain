//
//  main2.swift
//  ComputerPurchase
//
//  Created by Cloutier, Vincent on 2020-11-03.
//

import Foundation

print("Computer Purchase")
print("=================")



// Abdul Khan style solution

var largest = 0
var largestComputer = ""
let numberOfSpecs2 =  Int.collectInput(withPrompt: "How many specs will be provided?", minimum: 0, maximum: 10)

for i in 1...numberOfSpecs2 {
    print("Spec \(i)?")
    let specs = readLine()!
    let specsSeparated = specs.components(separatedBy: " ")
    let computerName = specsSeparated[0]
    let ram = Int(specsSeparated[0])
    let cpu = Int(specsSeparated[0])
    let disk = Int(specsSeparated[0])
    let formula = (2 * ram) + (3 * cpu) + disk
    if formula > largest {
        largest = formula
        largestComputer = computerName
    }
}

print("The best computer for you \(largestComputer)")

