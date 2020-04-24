//
//  GreenViewController.swift
//  iOS_FirstWeek_Seminar_Exercise
//
//  Created by Yunjae Kim on 2020/04/18.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
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
    @IBAction func dismissView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
        
        
    }
    
}
