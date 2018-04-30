//: Playground - noun: a place where people can play
//Author: Galo Mosquera

import UIKit

//Logic for selecting the nth for a random num of your choice from right to left
//If num = - ; then do it positive.
//If nth = - ; then return -1
func findDigit(_ num:Int, _ nth: Int) -> Int {
    if(nth <= 0){
        return -1
    }else{
        if(num < 0){
            let numPositive = -(num)
            let num2String = String(numPositive)
            var aux = ""
            
            if(nth <= num2String.count){
                let numBackwards = num2String.reversed()
                let numCharArray = Array(numBackwards)
                for i in numCharArray[0...(nth-1)] {
                    aux = String(i)
                }
            }else{
                return 0
            }
            return Int(aux)!
        }else{
            let num2String = String(num)
            var aux  = ""
            
            if(nth <= num2String.count){
                let numBackwards = num2String.reversed()
                let numCharArray = Array(numBackwards)
                for i in numCharArray[0...(nth-1)] {
                    aux = String(i)
                }
            }else{
                return 0
            }
            return Int(aux)!
        }
    }
}

print(findDigit(12345, 0))
