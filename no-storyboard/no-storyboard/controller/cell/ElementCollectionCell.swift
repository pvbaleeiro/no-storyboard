//
//  ElementCollectionCell.swift
//  no-storyboard
//
//  Created by Victor Baleeiro on 01/12/17.
//  Copyright © 2017 Going2. All rights reserved.
//

import UIKit

class ElementCollectionCell: UICollectionViewCell {

    //-------------------------------------------------------------------------------------------------------------
    // MARK: Properties
    //-------------------------------------------------------------------------------------------------------------
    //Views
    lazy var imgElement: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleToFill
        img.clipsToBounds = true
        img.image = UIImage(named: "ps4")
        return img
    }()
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Lifecycle
    //-------------------------------------------------------------------------------------------------------------
    override init(frame: CGRect) {
        super.init(frame: frame)
        //Sets
        setupLayout()
        setupData()
        setupText()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    //-------------------------------------------------------------------------------------------------------------
    // MARK: Setup
    //-------------------------------------------------------------------------------------------------------------
    func setupLayout() {
        
        //Add scroll in superview
        addSubview(imgElement)
        
        //Add contrainsts
        imgElement.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imgElement.heightAnchor.constraint(equalToConstant: 180).isActive = true
        imgElement.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        imgElement.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
    }
    
    func setupData() {
        
    }
    
    func setupText() {
        
    }
}
