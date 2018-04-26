//: Playground - noun: a place where people can play
//Author: Galo Mosquera

import UIKit

//Variables
var randomNumber : Int
var aux = 0

//Printing logic for random numbers without repeating in a row
//If 6 prints 666 after that number as a second rule
for _ in 1...10 {
    randomNumber = Int(arc4random_uniform(12 + 1))
    if aux == randomNumber {
        repeat{
            randomNumber = Int(arc4random_uniform(12 + 1))
        }while(randomNumber == aux)
        print(randomNumber)
        if randomNumber == 6 {
            print(666)
        }
    }else{
        print(randomNumber)
        if randomNumber == 6 {
            print(666)
        }
    }
    aux = randomNumber
}
