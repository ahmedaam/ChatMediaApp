//
//  CircleTheImage.swift
//  ChatMediaApp
//
//  Created by ahmed LolOl on 9/23/17.
//  Copyright © 2017 ahmed LolOl. All rights reserved.
//

import UIKit

class CircleTheImage: UIImageView {

    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
    
}


