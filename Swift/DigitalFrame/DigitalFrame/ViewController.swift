//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 박찬웅 on 2017. 4. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imgView:UIImageView!
    @IBOutlet var toggleButton:UIButton!
    @IBOutlet var speedSlider:UISlider!
    @IBOutlet var speedLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cuteImages = [UIImage(named:"1.jpeg")!,
                          UIImage(named:"2.jpeg")!,
                          UIImage(named:"3.jpeg")!,
                          UIImage(named:"4.jpeg")!,
                          UIImage(named:"5.jpeg")!,
                          UIImage(named:"6.jpeg")!,
                          UIImage(named:"7.jpeg")!,
                          UIImage(named:"8.jpeg")!,
                          UIImage(named:"9.jpeg")!,
                          UIImage(named:"10.jpeg")!,
                          UIImage(named:"11.jpeg")!,
                          UIImage(named:"12.jpeg")!,
                          UIImage(named:"13.jpeg")!,
                          UIImage(named:"14.jpeg")!,
                          UIImage(named:"15.jpeg")!]
        
        imgView.animationImages = cuteImages
        imgView.animationDuration = 2.0
        
    }
    
    @IBAction func toggleAction(_ sender:AnyObject)
    {
       
        if imgView.isAnimating
        {
            imgView.stopAnimating()
            toggleButton.setTitle("Start", for: UIControlState.normal)
        } else {
            
            imgView.startAnimating()
            toggleButton.setTitle("Stop", for: UIControlState.normal)
        }
    }
    
    @IBAction func changeSpeedAction(_ sender:AnyObject)
    {
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("Stop", for: UIControlState.normal)
        speedLabel.text = "\(speedSlider.value)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

