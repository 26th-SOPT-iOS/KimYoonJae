//
//  LogoutViewController.swift
//  SOPT_WEEK1_HW2_3
//
//  Created by Yunjae Kim on 2020/04/24.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class LogoutViewController: UIViewController {

    var id : String?
    var pw : String?
    
    
    @IBOutlet weak var idField: UITextField!
    
    @IBOutlet weak var pwField: UITextField!
    
    private func setField(){
        guard let id = self.id else {return}
        guard let pw = self.pw else {return}
        idField.text = id
        pwField.text = pw
    }

    @IBAction func dismissView(_ sender: Any) {
        let NVC = self.presentingViewController as? UINavigationController
    
        NVC?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setField()
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
