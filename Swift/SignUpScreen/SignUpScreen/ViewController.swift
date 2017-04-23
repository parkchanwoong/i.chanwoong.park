//
//  ViewController.swift
//  SignUpScreen
//
//  Created by 박찬웅 on 2017. 4. 18..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    //딜리게이트 메서드 일정 상황이 되면 자동으로 호출되는 메서드
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var telTextField: UITextField!
    @IBOutlet var blogTextField: UITextField!
    
    @IBOutlet var resultTextView: UITextView!
    
    @IBAction func signUpAction(_ sender: AnyObject)
    {
        resultTextView.text = "\(nameTextField.text!) 님 가입을 축하합니다."
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
//        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true;
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        nameTextField.delegate = self //네임텍스트필드에 대한 이벤트를 나 자신에게 던져주겠다.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

