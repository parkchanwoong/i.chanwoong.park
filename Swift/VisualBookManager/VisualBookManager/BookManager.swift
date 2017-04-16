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
    
    func findBook(_ name:String) -> String?  //옵셔널 value nil이나 String값이 들어와야함
    {
        var strTemp = ""
        for bookTemp in bookList
        {
            if bookTemp.name == name
            {
                strTemp += "Name : \(bookTemp.name)\n"
                strTemp += "Genre : \(bookTemp.genre)\n"
                strTemp += "Author : \(bookTemp.author)\n"
                
                return strTemp
            }
        }
        return nil
    }
    
    func removeBook(_ name:String) -> Bool
    {
        for bookTemp in bookList {
            if bookTemp.name == name
            {
                let index = (bookList as NSArray).index(of: bookTemp)
                bookList.remove(at: index)
                return true
            }
        }
        return false
    }
}







