//: Playground - noun: a place where people can play

import UIKit

//var legs = [String:Int]()
var legs:Dictionary<String,Int> = [:]
var legs2:[String:Int] = [:]

legs2["ant"] = 6
legs2["snake"] = 0
print(legs2)



var legs3 = ["ant":6,"snake":0,"cheetah":4]

legs3["human"] = 2

print(legs3)

print(legs3["ant"]!)

//immutable dictionary

let legs4 = ["ant":6,"snake":0,"cheetah":4]
//legs4["human"] = 2
