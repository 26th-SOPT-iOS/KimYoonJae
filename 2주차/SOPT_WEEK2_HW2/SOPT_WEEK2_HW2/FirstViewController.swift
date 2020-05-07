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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
