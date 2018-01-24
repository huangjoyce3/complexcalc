//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    //assert(calc.add(lhs: 2, rhs: 2) == 4)
    //assert(calc.subtract(lhs: 2, rhs: 2) == 0)
    //assert(calc.multiply(lhs: 2, rhs: 2) == 4)
    //assert(calc.divide(lhs: 2, rhs: 2) == 1)
    
    func add(lhs : Int, rhs : Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs : Int, rhs : Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs : Int, rhs : Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs : Int, rhs : Int) -> Int {
        return lhs / rhs
    }
    
    func mathOp(lhs : Int, rhs : Int, op : (Int, Int) -> Int ) -> Int{
        return op(lhs, rhs)
    }
    
    func add(_ arr : [Int]) -> Int {
        var sum = 0
        for num in arr {
            sum += num
        }
        return sum
    }
    
    func multiply(_ arr : [Int]) -> Int {
        var product = 1
        for num in arr {
            product *= num
        }
        return product
    }
    
    func count(_ arr : [Int]) -> Int {
        return arr.count
    }
    
    func avg(_ arr : [Int]) -> Int {
        return add(arr) / arr.count
    }
}
