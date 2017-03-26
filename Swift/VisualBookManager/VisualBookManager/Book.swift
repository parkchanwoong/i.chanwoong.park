//
//  Book.swift
//  BookManager
//
//  Created by 박찬웅 on 2017. 3. 26..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

import Foundation

class Book
{
    var name = ""
    var genre = ""
    var author = ""
    
    func bookPrint()
    {
        print("Name : \(name)")
        print("Genre : \(genre)")
        print("Author : \(author)")
    }
}
