//: Playground - noun: a place where people can play
//Author: Galo Mosquera

import UIKit

//Enums
enum Car : String{
    case Ford //Not raw value
    case Ferrari //Not raw value
    case Mustang = "Mustang 3000 GTX 2018" //With raw value
    case Audi = "Audi 2600 GTX" //With raw value
}

let myCar = Car.Audi.rawValue
let myCar2 : Car = .Mustang
myCar2.rawValue

print(myCar)

func returnCar(_myCar : Car) -> String{
    return _myCar.rawValue
}

print(returnCar(_myCar: .Mustang))

//Asserts
let quote = "Im a swift developer"
print(assert(quote == "Im a swift developer", "Dont lie to the compiler!"))
