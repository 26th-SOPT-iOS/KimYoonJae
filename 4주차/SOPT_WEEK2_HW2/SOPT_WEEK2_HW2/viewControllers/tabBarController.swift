//
//  tabBarController.swift
//  SOPT_WEEK2_HW2
//
//  Created by Yunjae Kim on 2020/05/14.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class tabBarController: UITabBarController {
    

    @IBOutlet weak var myTabBar: UITabBar!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setBarItems()
        
        
    

        // Do any additional setup after loading the view.
    }
    

    
    func setBarItems(){
        let myTabBarItem0 = (self.tabBar.items?[0])! as UITabBarItem
        let myTabBarItem1 = (self.tabBar.items?[1])! as UITabBarItem
        
        if(self.selectedIndex == 0){
            myTabBarItem0.image = UIImage(named: "friendsUnselectedIc")
            myTabBarItem1.image = UIImage(named: "homeUnSelectedIc")
        }
        else{
            myTabBarItem0.image = UIImage(named: "friendsUnselectedIc")
            myTabBarItem1.image = UIImage(named: "homeUnselectedIc")
        }
        
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
