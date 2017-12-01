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
        img.contentMode = .scaleAspectFill
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
        imgElement.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imgElement.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        imgElement.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imgElement.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func setupData() {
        
    }
    
    func setupText() {
        
    }
}
