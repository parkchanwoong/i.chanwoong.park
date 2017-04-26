//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by 박찬웅 on 2017. 4. 25..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(true)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(true)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(true)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool)
    {
        super.viewDidDisappear(true)
        print("viewDidDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

