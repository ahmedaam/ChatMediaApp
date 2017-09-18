//
//  TextField.swift
//  ChatMediaApp
//
//  Created by ahmed LolOl on 9/18/17.
//  Copyright © 2017 ahmed LolOl. All rights reserved.
//

import UIKit

class TextField: UITextField {


    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }

}
