//
//  FirstViewController.swift
//  SOPT_WEEK2_HW2
//
//  Created by Yunjae Kim on 2020/04/28.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit






class FirstViewController: UIViewController {
    
    
    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var btnTextField: UIButton!
    
    @IBOutlet weak var btnSignIn: UIButton!
    

    
    
    override func viewDidLoad() {
      
        
        
        
        super.viewDidLoad()
       
        idTextField.layer.cornerRadius = 22.0
        idTextField.layer.borderWidth = 1.0
        idTextField.layer.borderColor = UIColor.white.cgColor
        idTextField.clipsToBounds = true
        
        pwTextField.layer.cornerRadius = 22.0
        pwTextField.layer.borderWidth = 1.0
        pwTextField.layer.borderColor = UIColor.white.cgColor
        pwTextField.clipsToBounds = true
        
        btnTextField.layer.cornerRadius = 24
        
   

        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func login(_ sender: Any) {
        guard let inputID = idTextField.text else { return }
        guard let inputPWD = pwTextField.text else { return }
        LoginService.shared.login(id: inputID, pwd: inputPWD) { networkResult in
            switch networkResult {
            case .success(let token):
                guard let token = token as? String else { return }
                UserDefaults.standard.set(token, forKey: "token")
                guard let tabbarController = self.storyboard?.instantiateViewController(identifier:
        "tabBarController") as? UITabBarController else { return }
                tabbarController.modalPresentationStyle = .fullScreen
                self.present(tabbarController, animated: true, completion: nil)
            case .requestErr(let message):
                guard let message = message as? String else { return }
                let alertViewController = UIAlertController(title: "로그인 실패", message: message, preferredStyle: .alert)
                let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                alertViewController.addAction(action)
                self.present(alertViewController, animated: true, completion: nil)
            case .pathErr: print("path")
            case .serverErr: print("serverErr") case .networkFail: print("networkFail")

            }
        }
        
    }
    
    func AutoLogin(){
        guard let inputID = idTextField.text else { return }
               guard let inputPWD = pwTextField.text else { return }
               LoginService.shared.login(id: inputID, pwd: inputPWD) { networkResult in
                   switch networkResult {
                   case .success(let token):
                       guard let token = token as? String else { return }
                       UserDefaults.standard.set(token, forKey: "token")
                       guard let tabbarController = self.storyboard?.instantiateViewController(identifier:
               "tabBarController") as? UITabBarController else { return }
                       tabbarController.modalPresentationStyle = .fullScreen
                       self.present(tabbarController, animated: true, completion: nil)
                   case .requestErr(let message):
                       guard let message = message as? String else { return }
                       let alertViewController = UIAlertController(title: "로그인 실패", message: message, preferredStyle: .alert)
                       let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                       alertViewController.addAction(action)
                       self.present(alertViewController, animated: true, completion: nil)
                   case .pathErr: print("path")
                   case .serverErr: print("serverErr") case .networkFail: print("networkFail")

                   }
               }
        
        
    }
        
        
        
        
}
    

