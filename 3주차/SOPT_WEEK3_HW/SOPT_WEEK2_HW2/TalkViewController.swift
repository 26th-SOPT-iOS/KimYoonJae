//
//  TalkViewController.swift
//  SOPT_WEEK2_HW2
//
//  Created by Yunjae Kim on 2020/05/13.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

class TalkViewController: UIViewController {

    @IBOutlet weak var talkTableView: UITableView!
    private var userInformations : [userProfile] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUserInformations()
        talkTableView.dataSource = self
        talkTableView.delegate = self
        talkTableView?.separatorStyle = .none

        // Do any additional setup after loading the view.
    }
    
    private func setUserInformations(){
        let user1 = userProfile(profileimage: .img1, name: "박섭트", message: "왈왈!!멍멍ㅇ머머!왋멍!")
        let user2 = userProfile(profileimage: .img2, name: "시튜시튜", message: "몽몽")
        let user3 = userProfile(profileimage: .img3, name: "뽀림이", message: "빼꼬미")
        let user4 = userProfile(profileimage: .img4, name: "이솝트", message: "총총총총총총총총총")
        let user5 = userProfile(profileimage: .img5, name: "이솝트", message: "멀바")
        let user6 = userProfile(profileimage: .img6, name: "이솝트", message: "아~")
        let user7 = userProfile(profileimage: .img7, name: "이솝트", message: "빼액")
        let user8 = userProfile(profileimage: .img8, name: "이솝트", message: "애옹애오애옹애옹")
        let user9 = userProfile(profileimage: .img9, name: "이솝트", message: "왈왈!!멍멍ㅇ머머!왋멍!")

        userInformations = [user1,user2,user3,user4,user5,user6,user7,user8,user9]
        
    }
    
    
    
    @IBAction func btnSetting(_ sender: UIButton) {
        let settingAlert = UIAlertController(title: nil, message:nil , preferredStyle: .actionSheet)
        
        let firstAction = UIAlertAction(title: "친구 관리", style: .default, handler: nil)
        
        let secondAction = UIAlertAction(title: "전체 설정", style: .default, handler: nil)
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        settingAlert.addAction(firstAction)
        settingAlert.addAction(secondAction)
        settingAlert.addAction(cancelAction)
        present(settingAlert,animated: true,completion: nil)
        
        
        
    }
    
    

}




extension TalkViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userInformations.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let talkCell = tableView.dequeueReusableCell(withIdentifier: TalkCell.identifier, for: indexPath) as? TalkCell
            else{ return UITableViewCell()}
        talkCell.setUserInformation(profileImageName: userInformations[indexPath.row].profileimage.getImageName(), name: userInformations[indexPath.row].name, message: userInformations[indexPath.row].message)
        
        return talkCell
    }
    
    
    

}

extension TalkViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 63
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            userInformations.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "삭제"
    }
    
    
    
    
}
