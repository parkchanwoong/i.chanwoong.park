//: Playground - noun: a place where people can play

import UIKit

class Vehicle
{
    var currentSpeed = 0.0 //stored property
    var description:String //computed property
    {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        print("noiseless")
    }
}


let someVehicle = Vehicle();
someVehicle.currentSpeed = 1.0
print("Vehicle : \(someVehicle.description)")


class Bicycle:Vehicle
{
    var hasBasket = false
    
}

let bicycle = Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 15.0

print("bicycle : \(bicycle.description)")

class Tandem:Bicycle
{
    var curretNumberOfPassengers = 0
    override var description:String //computed property
    {
        return "traveling at \(currentSpeed) miles per hour, number of passenger : \(curretNumberOfPassengers), basket : \(hasBasket)"
    }

}

let tandem = Tandem()
tandem.hasBasket = true
tandem.curretNumberOfPassengers = 2
tandem.currentSpeed = 22.0

print("Tandem : \(tandem.description)")


class Train:Vehicle
{
    override func makeNoise() {
        print("Choo Choo")
    }
}
for i in 0...9 {
    print("\(i)")
}
let train = Train()

train.makeNoise()


class Car:Vehicle
{
    var gear = 1
   override var description:String //computed property
    {
        return super.description + "in gear \(gear)"
    }
    
}


let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")


class AutomaticCar:Car
{
  override var currentSpeed: Double
    {
    didSet
    {
        gear = Int(currentSpeed / 10) + 1
    }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 30.0
print("AutomatiCar : \(automatic.description)")