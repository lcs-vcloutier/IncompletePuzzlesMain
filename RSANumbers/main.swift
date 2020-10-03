//
//  main.swift
//  RSA Numbers
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/rsa-numbers.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("RSA Numbers")
print("===========")

// INPUT

// Get lower limit of range
print("Enter lower limit of range")
let lower = Int(readLine()!)!

// Get upper limit of range
print("Enter upper limit of range")
let upper = Int(readLine()!)!

// Set the range
let userRange = lower...upper

// Initialize an RSA number counter
var rsaCount = 0

// PROCESS

// Count the number of divisors in the given Number
func divisorCount(of givenNumber: Int) -> Int {
    
    // 1 is always a divisor
    var divisorCount = 1
    
    // Start looping from 2
    for i in 2...givenNumber {
        
        // What is the remainder?
        let remainder = givenNumber % i
        
        // DEBUG output...
       // print("\(givenNumber) \\ \(i) has a remainder of \(remainder)")
        
        // TODO: Add some code here... we need to keep track of how many divisors there are
        if remainder == 0 {
            divisorCount += 1
        }
        
    }
    
    if divisorCount == 4 {
        rsaCount += 1
    }
    
    // Return the count of divisors
    return divisorCount
    
}

for i in userRange {
    divisorCount(of: i)
}



// How many RSA numbers does a range have?
print("The number of RSA numbers between \(lower) and \(upper) is \(rsaCount)")
