//
//  main.swift
//  I Speak TXTMSG
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/i-speak-txtmsg.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("I Speak TXTMSG")
print("==============")

while 0<1 {
    // INPUT

    // Ask for a phrase
    print("Enter phrase> ", terminator: "")
    let phrase = readLine()!
    
    // PROCESS AND OUTPUT
    
    switch phrase {
    case "TA":
        print("totally awesome")
    case "TTYL":
        print("talk to you later")
    case "CU":
        print("see you")
    case ":-)":
        print("I’m happy")
    case ":-(":
        print("I’m unhappy")
    case ";-)":
        print("wink")
    case ":-P":
        print("stick out my tongue")
    case "(˜.˜)":
        print("sleepy")
    case "CCC":
        print("Canadian Cheese Champion")
    case "CUZ":
        print("because")
    case "TY":
        print("thank you")
    case "YW":
        print("you're welcome")
    default:
        print(phrase)
    }
}
