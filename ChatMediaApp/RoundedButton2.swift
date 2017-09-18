//
//  RoundedButton2.swift
//  ChatMediaApp
//
//  Created by ahmed LolOl on 9/18/17.
//  Copyright © 2017 ahmed LolOl. All rights reserved.
//

import UIKit

class RoundedButton2: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.cornerRadius = 3.0
    }
}
