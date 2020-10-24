//
//  main.swift
//  ChipsFastFood
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/chips-fast-food-emporium.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Chip's Fast Food Emporium")
print("=========================")

// Welcome message
print("")
print("Welcome to Chip's Fast Food Emporium")

// INPUT
// Get burger choice
let burger = Int.collectInput(withPrompt: "Please enter a burger choice:", minimum: 1, maximum: 4)
// Get drink choice
let drink = Int.collectInput(withPrompt: "Please enter a drink choice:", minimum: 1, maximum: 4)
// Get side choice
let side = Int.collectInput(withPrompt: "Please enter a side choice:", minimum: 1, maximum: 4)
// Get dessert choice
let dessert = Int.collectInput(withPrompt: "Please enter a dessert choice:", minimum: 1, maximum: 4)

// PROCESS
// Get burger calories
let burgerCalorie = 0
// Get drink calories
let drinkCalorie = 0
// Get side calories
let sideCalorie = 0
// Get dessert calories
let dessertCalorie = 0

// Get total calorie count
let totalCalorieCount = burgerCalorie + drinkCalorie + sideCalorie + dessertCalorie

// OUTPUT
// Show the calories total for the choices made by the user.
print("Your total calorie count is \(totalCalorieCount)")
