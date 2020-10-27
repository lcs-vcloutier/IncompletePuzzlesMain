//
//  main.swift
//  RSA Numbers
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/rsa-numbers.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.
//
//  Test your solution to the puzzle using this plan:
//
//  https://www.russellgordon.ca/incomplete-puzzles/test-plan-rsa-numbers.pdf
//

import Foundation

print("RSA Numbers")
print("===========")

// INPUT

// Get lower limit of range
let lower = Int.collectInput(withPrompt: "Enter lower limit of range",
                           minimum: 1,
                           maximum: 1000)
// Get upper limit of range
let upper = Int.collectInput(withPrompt: "Enter upper limit of range",
                           minimum: 1,
                           maximum: 1000)
// Set the range
let userRange = lower...upper

// Initialize an RSA number counter
var rsaCount = 0

// PROCESS

// Count the number of divisors in the given Number
func divisorCount(of givenNumber: Int) -> Int {
    
    var divisorCount = 0
    
    // Start looping from 2
    for i in 1...givenNumber {
        
        // What is the remainder?
        let remainder = givenNumber % i
        
        // Keep track of how many divisors there are
        if remainder == 0 {
            divisorCount += 1
        }
    }
    // Return the count of divisors
    return divisorCount
}



// Count RSA numbers
for i in userRange {
    if divisorCount(of: i) == 4 {
        rsaCount += 1
    }
}



// How many RSA numbers does a range have?
print("The number of RSA numbers between \(lower) and \(upper) is \(rsaCount)")
