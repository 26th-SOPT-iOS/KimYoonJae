//
//  userProfile.swift
//  SOPT_WEEK2_HW2
//
//  Created by Yunjae Kim on 2020/05/13.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import Foundation

struct userProfile {
    var profileimage : ProfileImage
    var name : String
    var message : String
    
    init(profileimage : ProfileImage,name: String,message:String){
        self.profileimage = profileimage
        self.name = name
        self.message = message
        
    }
    
    
    
}

enum ProfileImage {
    case img1
    case img2
    case img3
    case img4
    case img5
    case img6
    case img7
    case img8
    case img9

    
    func getImageName()->String{
        
        switch self{
        case .img1 : return "profile1Img"
        case .img2 : return "profile2Img"
        case .img3 : return "profile3Img"
        case .img4 : return "profile4Img"
        case .img5 : return "profile5Img"
        case .img6 : return "profile6Img"
        case .img7 : return "profile7Img"
        case .img8 : return "profile8Img"
        case .img9 : return "profile9Img"
            
        }
        
        
    }
    
}


