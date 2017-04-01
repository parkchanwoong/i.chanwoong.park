//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 박찬웅 on 2017. 3. 27..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myBook = BookManager()
    @IBOutlet var outputTextView:UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book()
        book1.name = "햄릿"
        book1.genre = "비극"
        book1.author = "셰익스피어"
        
        //book1.bookPrint()
        
        let book2 = Book()
        book2.name = "누구를 위하여 종을 울리나"
        book2.genre = "전쟁소설"
        book2.author = "헤밍웨이"
        
        //book2.bookPrint()
        
        let book3 = Book()
        book3.name = "죄와벌"
        book3.genre = "사실주의"
        book3.author = "톨스토이"
        
        //book3.bookPrint()
        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
        

    }
    
    @IBAction func showAllBookAction(_ sender:AnyObject)
    {
//        print(myBook.showAllBook())
        outputTextView.text = myBook.showAllBook()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

