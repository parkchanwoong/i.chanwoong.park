//
//  ViewController.swift
//  FlightBooking
//
//  Created by 박찬웅 on 2017. 4. 26..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var selectDatePicker: UIDatePicker!
    @IBOutlet var returnDateLabel: UILabel!
    @IBOutlet var returnDateButton: UIButton!
    @IBOutlet var departureDateButton: UIButton!
   
    var buttonTag:Int = 1
   
    @IBAction func showDatePickerAction(_ sender: Any)
    {
        if selectDatePicker.isHidden == false
        {
            selectDatePicker.isHidden = true
        } else {
            selectDatePicker.isHidden = false
        }
        
        buttonTag = (sender as! UIButton).tag
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }
    
    @IBAction func selectedDateAction(_ sender: Any)
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        
        //        let dateString = formatter.string(from: selectDatePicker.date)
        let dateString = formatter.string(from: (sender as! UIDatePicker).date)
        if buttonTag == 1
        {
            departureDateButton.setTitle(dateString, for: UIControlState())
        } else {
            returnDateButton.setTitle(dateString, for: UIControlState())
        }
    }
    
    @IBAction func showReturnDateAction(_ sender: Any)
    {
        returnDateLabel.isHidden = !(sender as! UISwitch).isOn
        returnDateButton.isHidden = !(sender as! UISwitch).isOn
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        selectDatePicker.isHidden = true
        returnDateButton.isHidden = true
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

