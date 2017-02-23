//: Playground - noun: a place where people can play

import UIKit

//var comment = [String]()
var comment:Array<String> = []
var comment2:[String] = []

comment2.append("Anna")
comment2.append("Alex")

print(comment2)

var comment3 = ["Anna","Alex","Brian","Jack"]


comment3 += ["Choi"]
comment3 += ["Jin"]
comment3 += ["Kim"]



print(comment3[1])

comment3[1] = "Tim"


print(comment3[1])

//immutable Array
let comment4 = ["Anna","Alex","Brian","Jack"]

print(comment4)

