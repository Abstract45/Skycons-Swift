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
        
        
        let weatherTypes: [Skycons] =
            [
                .ClearDay,
                .ClearNight,
                .Cloudy,
                .Fog,
                .PartlyCloudyDay,
                .PartlyCloudyNight,
                .Rain,
                .Sleet,
                .Snow,
                .Wind
        ]
        
        for i in weatherTypes {
            let iconView = SKYIconView(frame: CGRect(x: xPadding, y: yPadding, width: 128, height: 128))
            
            if yPadding >= UIScreen.mainScreen().bounds.height - 200 {
                xPadding += 150
                yPadding = 30
            } else {
                yPadding += 140
            }
            
            iconView.setType = i
            iconView.setColor = UIColor.cyanColor()
            iconView.backgroundColor = UIColor.redColor()
        
            self.view.addSubview(iconView)
        }
       
    }
}
