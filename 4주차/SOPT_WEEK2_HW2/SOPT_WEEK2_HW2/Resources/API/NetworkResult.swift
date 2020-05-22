//
//  NetworkResult.swift
//  SOPT_WEEK2_HW2
//
//  Created by Yunjae Kim on 2020/05/16.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//

import Foundation

enum NetworkResult<T> {
    
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
    
}
