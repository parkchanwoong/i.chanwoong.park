//
//  ViewController.swift
//  MiniBrowser
//
//  Created by 박찬웅 on 2017. 4. 26..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate , UIWebViewDelegate {

    @IBOutlet var bookMarkSegmentedControl: UISegmentedControl!
    @IBOutlet var urlTextField: UITextField!
    @IBOutlet var mainWebView: UIWebView!
    @IBOutlet var spinningActivityIndicatorView: UIActivityIndicatorView!
    
  
    
    
    @IBAction func bookMarkAction(_ sender: Any)
    {
        let bookMarkUrl = bookMarkSegmentedControl.titleForSegment(at: bookMarkSegmentedControl.selectedSegmentIndex)
        let urlString = "https://www.\(bookMarkUrl!).com"
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        var urlString = "\(urlTextField.text!)"
        
        if !urlString.hasPrefix("https://")
        {
            urlString = "https://\(urlTextField.text!)"
        }
        urlTextField.text = urlString
        mainWebView.loadRequest(URLRequest(url: URL (string: urlString)!))
        textField.resignFirstResponder()
        return true
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let urlString = "https://www.facebook.com"
        mainWebView.loadRequest(URLRequest(url: URL(string: urlString)!))
        urlTextField.text = urlString
        
    
    }
    
    func webViewDidStartLoad(_ webView: UIWebView)
    {
        spinningActivityIndicatorView.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView)
    {
        spinningActivityIndicatorView.stopAnimating()
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

