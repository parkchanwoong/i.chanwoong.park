//
//  BookManager.swift
//  BookManager
//
//  Created by 박찬웅 on 2017. 3. 26..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

import Foundation

class BookManager
{
    var bookList = [Book]() //mutable array
    
    func addBook(_ bookObject:Book)
    {
        bookList += [bookObject]
    }
    
    func showAllBook() -> String
    {
        var strTemp = ""
        
        for bookTemp in bookList
        {
            strTemp += "Name : \(bookTemp.name)\n"
            strTemp += "Genre : \(bookTemp.genre)\n"
            strTemp += "Author : \(bookTemp.author)\n"
            strTemp += "----------------------------\n"
            
        }
        return strTemp
    }

    func countBook() -> Int
    {
        return bookList.count
    }
    
    func findBook(_ name:String) -> String
    {
        for bookTemp in bookList {
            if bookTemp.name == name
            {
//                strTemp += "Name : \(bookTemp.name)\n"
//                strTemp += "Genre : \(bookTemp.genre)\n"
//                strTemp += "Author : \(bookTemp.author)\n"
//                strTemp += "----------------------------\n"
            }
        }
    }
    
    func removeBook()
    {
        
    }
}
