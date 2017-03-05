//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var x = 3

x += 10

func addTwoNumbers(num1: Int, num2: Int) -> Int {
    return num1 + num2
    
}

var sum = addTwoNumbers(10, num2: 5)

for counter in 1...10 { //inclusive
    print(counter)
}

class someClass: NSObject { //"NS" means Next Step
    
}
class someotherClass: someClass { //Swift only supports single inheritance because Apple want you to use Protocols instead
    
}

//Swifts supports enums, structs, and switch statements