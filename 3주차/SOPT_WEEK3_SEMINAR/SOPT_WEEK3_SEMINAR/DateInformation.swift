//
//  DateInformation.swift
//  SOPT_WEEK3_SEMINAR
//
//  Created by Yunjae Kim on 2020/05/09.
//  Copyright © 2020 Yunjae Kim. All rights reserved.
//
import Foundation

struct DateInformation {
    var weather: Weather
    var date: String
    var subTitle: String
    init(weather: Weather, date: String, subTitle: String) {
        self.weather = weather
        self.date = date
        self.subTitle = subTitle
    }
    
}


enum Weather {
    case cloudy
    case rainny
    case snowy
    case sunny
    func getImageName() -> String {
        switch self {
        case .cloudy: return "weather-cloudy"
        case .rainny: return "weather-rainny"
        case .snowy: return "weather-snowy"
        case .sunny: return "weather-sunny"
            
        }

    }
    
}
