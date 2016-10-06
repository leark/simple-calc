//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 10/4/16.
//
//

import Foundation

func factorial(number: Double) -> Double {
    if number == 0 {
        return 1;
    } else {
        return number * factorial(number: number - 1)
    }
}

print("Enter an expression separated by returns:")

var ints = [Double]()

var response = readLine(strippingNewline: true)!
var num = Double.init(response)

print("first number is \(num!)")

while num != nil {
    ints.append(num!)
    response = readLine(strippingNewline: true)!
    num = Double.init(response)
}

let operand = response
print("operand is " + operand)

var response2:String
var num2 = 0.0
if ints.count == 1 && operand != "fact" && operand != "count" && operand != "avg" {
    response2 = readLine(strippingNewline: true)!
    num2 = Double.init(response2)!
    print("2nd number is \(num2)")
}

var result = 0.0
switch operand {
case "+":
    result = ints[0] + num2
case "-":
    result = ints[0] - num2
case "*":
    result = ints[0] * num2
case "/":
    result = ints[0] / num2
case "%":
    result = fmod(ints[0], num2)
case "count":
    result = Double(ints.count)
case "avg":
    for stored in ints {
        result += stored
    }
    result = result / Double(ints.count)
case "fact":
    if ints.count == 1 {
        result = factorial(number: ints[0])
    } else {
        print("Can only accept one number for factorial")
    }
default:
    print("unknown operand")
}

print("Result: \(result)")
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
 http://pastebin.com/6phtTJB9
 */

