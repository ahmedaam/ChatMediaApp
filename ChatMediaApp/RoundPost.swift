//
//  RoundPost.swift
//  ChatMediaApp
//
//  Created by ahmed LolOl on 9/24/17.
//  Copyright © 2017 ahmed LolOl. All rights reserved.
//

import UIKit

class RoundPost: UIImageView {
    
    

    override func layoutSubviews() {
        layer.cornerRadius = 3.0
        clipsToBounds = true
        
    }

}
