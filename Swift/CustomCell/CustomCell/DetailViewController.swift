//
//  DetailViewController.swift
//  CustomCell
//
//  Created by 박찬웅 on 2017. 5. 17..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var amountlabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    var detailData = [String:String]() //딕셔너리 타입
    override func viewDidLoad()
    {
        super.viewDidLoad()
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
        
        
        nameLabel.text = detailData["name"]!
        amountlabel.text = detailData["amount"]!
        valueLabel.text = detailData["value"]!
        
        imgView.image = UIImage(named: detailData["image"]!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
