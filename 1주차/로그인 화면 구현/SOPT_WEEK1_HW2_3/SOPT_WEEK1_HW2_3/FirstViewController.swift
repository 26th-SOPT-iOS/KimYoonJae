//
//  FirstViewController.swift
//  SOPT_WEEK1_HW2_3
//
//  Created by Yunjae Kim on 2020/04/24.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var idTextField: UITextField!
    
    
    @IBOutlet weak var pwTextField: UITextField!
    
    
    @IBAction func loginFunc(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "LogoutViewController") as? LogoutViewController else {return}
                     
                     receiveViewController.id = idTextField.text
                     receiveViewController.pw = pwTextField.text
                     self.present(receiveViewController,animated: true,completion: nil)
    }
    
}
