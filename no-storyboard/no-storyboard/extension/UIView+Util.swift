//
//  UIView+Util.swift
//  no-storyboard
//
//  Created by Victor Baleeiro on 01/12/17.
//  Copyright © 2017 Going2. All rights reserved.
//

import UIKit

extension UIView {
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Auxiliares
    //-------------------------------------------------------------------------------------------------------------
    class func classIdentifier() -> String {
        let delimiter = "."
        let bruteName = NSStringFromClass(self)
        let pureName = bruteName.components(separatedBy: delimiter)
        return pureName[1]
    }
}
