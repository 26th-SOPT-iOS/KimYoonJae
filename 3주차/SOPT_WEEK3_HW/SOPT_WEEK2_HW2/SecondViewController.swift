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
        
        
        finishBtn.layer.cornerRadius = 22.0
        
        
        super.viewDidLoad()

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

