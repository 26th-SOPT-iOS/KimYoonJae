//
//  SecondViewController.swift
//  SOPT_WEEK2_HW2
//
//  Created by Yunjae Kim on 2020/04/29.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!

    @IBOutlet weak var pwTextField: UITextField!

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    
    
    @IBOutlet weak var finishBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.tintColor = UIColor(red : 7/255, green : 59/255, blue : 163/255, alpha: 1.0)
        
        
        
        nameTextField.layer.cornerRadius = 22.0
        nameTextField.layer.borderWidth = 1.0
        nameTextField.layer.borderColor = UIColor.white.cgColor
        
        idTextField.layer.cornerRadius = 22.0
        idTextField.layer.borderWidth = 1.0
        idTextField.layer.borderColor = UIColor.white.cgColor
        
        pwTextField.layer.cornerRadius = 22.0
        pwTextField.layer.borderWidth = 1.0
        pwTextField.layer.borderColor = UIColor.white.cgColor
        
        emailTextField.layer.cornerRadius = 22.0
        emailTextField.layer.borderWidth = 1.0
        emailTextField.layer.borderColor = UIColor.white.cgColor
        
        phoneNumberTextField.layer.cornerRadius = 22.0
        phoneNumberTextField.layer.borderWidth = 1.0
        phoneNumberTextField.layer.borderColor = UIColor.white.cgColor
        
        
        finishBtn.layer.cornerRadius = 22.0
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUp(_ sender: Any) {
        guard let inputId = idTextField.text else { return }
        guard let inputPw = pwTextField.text else { return }
        guard let inputName = nameTextField.text else { return }
        guard let inputEmail = emailTextField.text else { return }
        guard let inputPhoneNumber = phoneNumberTextField.text else { return }
 
         
        SignupService.shared.signup(id: inputId, password: inputPw, name: inputName, email: inputEmail, phone: inputPhoneNumber){ networkResult in
            switch networkResult{
            case .success(_) :
                print("success")
                guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "FirstViewController") as? FirstViewController else {return}
                receiveViewController.modalPresentationStyle = .fullScreen


                self.present(receiveViewController,animated: true,completion: nil)
                
                receiveViewController.idTextField.text = inputId
                receiveViewController.pwTextField.text = inputPw
                
                receiveViewController.AutoLogin()

               
                
                
//                guard let tabbarController = self.storyboard?.instantiateViewController(identifier:
//                "tabBarController") as? UITabBarController else { return }
//
//               self.present(tabbarController, animated: true, completion: nil)
            case .requestErr(let message):
                print("request")
                guard let message = message as? String else {return}
                let alertViewController = UIAlertController(title: "회원가입 실패", message: message, preferredStyle: .alert)
                let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                alertViewController.addAction(action)
                self.present(alertViewController, animated: true, completion: nil)
            case .pathErr: print("path")
            case .serverErr: print("serverErr")
            case .networkFail: print("networkFail")

                
            }
            
            
        }
        
        
        
        
        
        
    }
    

}

