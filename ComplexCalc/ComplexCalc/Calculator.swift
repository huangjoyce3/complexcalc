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
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int ) -> Int{
        return op(lhs, rhs)
    }
    
    func add(_ arr: [Int]) -> Int {
        var sum = 0
        for num in arr {
            sum += num
        }
        return sum
    }
    
    func multiply(_ arr: [Int]) -> Int {
        var product = 1
        for num in arr {
            product *= num
        }
        return product
    }
    
    func count(_ arr: [Int]) -> Int {
        return arr.count
    }
    
    func avg(_ arr: [Int]) -> Int {
        return add(arr) / arr.count
    }

    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        var begin = beg
        for num in args {
            begin = op(num, begin)
        }
        return begin
    }
    
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int,Int) {
        return (add(lhs: lhs.0, rhs: rhs.0), add(lhs: lhs.1, rhs: rhs.1))
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int,Int) {
        return (subtract(lhs: lhs.0, rhs: rhs.0), subtract(lhs: lhs.1, rhs: rhs.1))
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": add(lhs: lhs["x"]!, rhs: rhs["x"]!), "y": add(lhs: lhs["y"]!, rhs: rhs["y"]!)]
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": subtract(lhs: lhs["x"]!, rhs: rhs["x"]!), "y": subtract(lhs: lhs["y"]!, rhs: rhs["y"]!)]
    }
    
}
