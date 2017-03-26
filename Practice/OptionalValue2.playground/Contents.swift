//: Playground - noun: a place where people can play

import UIKit

class Optional
{
    var optionalString:String? = "Hello" //랩핑?
    func hello()
    {
        print(optionalString!) //언랩핑?
    }
}

var option = Optional()
option.hello()