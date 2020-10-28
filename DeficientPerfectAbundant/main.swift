//
//  main.swift
//  DeficientPerfectAbundant
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/deficient-perfect-abundant.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
//
//  Test your solution to the puzzle using this plan:
//
//  https://www.russellgordon.ca/incomplete-puzzles/test-plan-deficient-perfect-abundant.pdf
//

import Foundation

print("Deficient, Perfect, Abundant")
print("============================")

// INPUT

// Get the number to check
let n = Int.collectInput(withPrompt: "",
                                       minimum: 1,
                                       maximum: 32500)

// PROCESS
func divisors(number: Int) -> [Int] {
    // Range of all potential numbers
    let potentialDivisors = (1..<number)
    // Find all proper divisors
    return potentialDivisors.filter { divisor in
        number % divisor == 0
    }
}

var sumOfDivisors = divisors(number: n).reduce(0, +) // Divisors func and add each item of the array into an Int
var typeOfNumber = ""

// Check sum of divisors against number to determine if it's perfect, deficient or abundant
if sumOfDivisors == n {
    typeOfNumber = "perfect"
}
else if sumOfDivisors <= n {
    typeOfNumber = "deficient"
}
else if sumOfDivisors >= n {
    typeOfNumber = "abundant"
}
else {
    typeOfNumber = "uncategorized"
}

// OUTPUT
print("\(n) is a \(typeOfNumber) number.")

