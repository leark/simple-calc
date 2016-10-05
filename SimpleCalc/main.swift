//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 10/4/16.
//
//

import Foundation

print("Hello, World!")

/*
 enter a number hit return
 enter operation (add, sub, mul, div, mod) then return
 user can enter a number hit return
 program calculates the result

 count: count the number of input
 10 4 25 17 5 count -> 5
 avg: average all the inputs
 2 4 6 8 10 av -> 6
 any of them can take any number of inputs
 fact: calculate factorial
 5 fact -> 60
 fact can only accept one number
 
 let response = readLine(stripNewLine: true)!
 let num = UInt.init(response)!
 both produce "optional" values, must unwrap using "!"
 
 discover how to support negative and decimal numbers
 discover how to support command-line arguments, and take all input that way
    calc 2 4 6 8 10 avg
    6
 
 */

func add() -> Int {
    return 5
}

func sub() -> Int {
    return 6
}

func mul() -> Int {
    return 7
}

func div() -> Int {
    return 8
}

func fact() -> Int {
    return 9
}

func count() -> Int {
    return 10
}

func avg() -> Int {
    return 11
}
