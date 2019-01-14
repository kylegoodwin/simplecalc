//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        
        switch args[args.count - 1] {
        case "count":
            return args.count-1;
        case "avg":
            var total = 0
            var element = 0
            while(args[element] != "avg"){
                total = total + Int(args[element])!
                element = element + 1
            }
            if( element == 0){
                return 0
            }
            return ( total/element)
        case "fact":
            var total = 1;
            var count = 1;
            
            if( args[0] == "fact"){
                return 0
            }
            
            while( count <= Int(args[0])!){
                total = total * count
                count = count + 1
            }
        
            return total
            
        default:
            
            switch args[1] {
            case "+":
                return Int(args[0])! + Int(args[2])!
            case "-":
                return Int(args[0])! - Int(args[2])!
            case "/":
                return Int(args[0])! / Int(args[2])!
            case "%":
                return Int(args[0])! % Int(args[2])!
            case "*":
                return Int(args[0])! * Int(args[2])!
                
            default:
                return 0
                
            }
        }
        
    }
    
    public func calculate(_ arg: String) -> Int {
        return calculate( arg.split(separator: " ").map({ substr in String(substr) }) )
        
    }
}

print("UW Calculator v1")
print("Enter an expression separated by returns:")
let first = readLine()!
let operation = readLine()!
let second = readLine()!
print(Calculator().calculate([first, operation, second]))

