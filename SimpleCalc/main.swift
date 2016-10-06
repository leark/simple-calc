//  SimpleCalc
//
//  Created by Seung Lee on 10/4/16.
//  Calculator that can add, subtract, multiply, divide, mod and
//  find number of numbers put in, average of numbers, and factorial of a number
//
//  can operate with negative and decimal numbers

import Foundation

func factorial(number: Double) -> Double {
    if number == 0 {
        return 1;
    } else {
        return number * factorial(number: number - 1)
    }
}

print("Enter an expression separated by returns:")

var doubles = [Double]()

var response = readLine(strippingNewline: true)!
var num = Double.init(response)

while num != nil {
    doubles.append(num!)
    response = readLine(strippingNewline: true)!
    num = Double.init(response)
}

let operand = response

var response2:String
var num2 = 0.0
if doubles.count == 1 && operand != "fact" && operand != "count" && operand != "avg" {
    response2 = readLine(strippingNewline: true)!
    num2 = Double.init(response2)!
}

var result = 0.0
switch operand {
case "+":
    result = doubles[0] + num2
case "-":
    result = doubles[0] - num2
case "*":
    result = doubles[0] * num2
case "/":
    result = doubles[0] / num2
case "%":
    result = fmod(doubles[0], num2)
case "count":
    result = Double(doubles.count)
case "avg":
    for stored in doubles {
        result += stored
    }
    result = result / Double(doubles.count)
case "fact":
    if doubles.count == 1 {
        result = factorial(number: doubles[0])
    } else {
        print("Can only accept one number for factorial")
    }
default:
    print("unknown operand")
}

print("Result: \(result)")


