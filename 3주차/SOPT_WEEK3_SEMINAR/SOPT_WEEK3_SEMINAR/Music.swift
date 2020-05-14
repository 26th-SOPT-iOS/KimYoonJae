//
//  Music.swift
//  SOPT_WEEK3_SEMINAR
//
//  Created by Yunjae Kim on 2020/05/09.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import UIKit

// Music 모델
struct Music {
    
    var albumImg: UIImage?
    var musicTitle: String?
    var singer: String?
    var coverName: String?
    
    init(title: String, singer: String, coverName: String) {
        self.albumImg = UIImage(named: title)
        self.musicTitle = coverName
        self.singer = singer
        
    }
    
}
