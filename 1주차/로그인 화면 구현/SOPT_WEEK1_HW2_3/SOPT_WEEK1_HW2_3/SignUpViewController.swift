//
//  SignUpViewController.swift
//  SOPT_WEEK1_HW2_3
//
//  Created by Yunjae Kim on 2020/04/24.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }
    
  
    @IBOutlet weak var idTField: UITextField!
  


    @IBOutlet weak var pwTField: UITextField!
    

    @IBAction func SignUp(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "LogoutViewController") as? LogoutViewController else {return}

              receiveViewController.id = idTField.text
              receiveViewController.pw = pwTField.text
              self.present(receiveViewController,animated: true,completion: nil)



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
