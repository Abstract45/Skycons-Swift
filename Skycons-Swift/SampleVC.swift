//
//  SampleVC.swift
//  Skycons-iOS
//
//  Created by Miwand Najafe on 2016-06-10.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import UIKit


class SampleVC: UIViewController {
    
    var xPadding: CGFloat = 30
    var yPadding: CGFloat = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let weatherTypes: [Skycon] =
            [
                .clearDay,
                .clearNight,
                .cloudy,
                .fog,
                .partlyCloudyDay,
                .partlyCloudyNight,
                .rain,
                .sleet,
                .snow,
                .wind
        ]
        
        for type in weatherTypes {
            
            let frame = CGRect(x: xPadding, y: yPadding, width: 128, height: 128)
            let iconView = SkyIconView(type: type, strokeColor: .white, backgroundColor: .black, frame: frame)
            
            if yPadding >= UIScreen.main.bounds.height - 200 {
                xPadding += 150
                yPadding = 30
            } else {
                yPadding += 140
            }
            
            self.view.addSubview(iconView)
        }
        
    }
}
