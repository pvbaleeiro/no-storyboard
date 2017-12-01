//
//  ElementCell.swift
//  no-storyboard
//
//  Created by Victor Baleeiro on 01/12/17.
//  Copyright © 2017 Going2. All rights reserved.
//

import UIKit

class ElementCell: UITableViewCell {

    //-------------------------------------------------------------------------------------------------------------
    // MARK: Properties
    //-------------------------------------------------------------------------------------------------------------
    //Views
    lazy var clvElement: UICollectionView = {
       let clvLayout = UICollectionViewFlowLayout()
        clvLayout.scrollDirection = .horizontal
        clvLayout.minimumInteritemSpacing = 0
        clvLayout.minimumLineSpacing = 0
        clvLayout.itemSize = CGSize(width: 300, height: 300)
        
        let clv = UICollectionView(frame: .zero, collectionViewLayout: clvLayout)
        clv.translatesAutoresizingMaskIntoConstraints = false
        clv.register(ElementCollectionCell.self, forCellWithReuseIdentifier: ElementCollectionCell.classIdentifier())
        clv.delegate = self
        clv.dataSource = self
        return clv
    }()
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Lifecycle
    //-------------------------------------------------------------------------------------------------------------
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
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
        addSubview(clvElement)
        
        //Add contrainsts
        clvElement.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        clvElement.topAnchor.constraint(equalTo: topAnchor).isActive = true
        clvElement.heightAnchor.constraint(equalToConstant: 250).isActive = true
        clvElement.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    
    func setupData() {
        
    }
    
    func setupText() {
        
    }
}


//-------------------------------------------------------------------------------------------------------------
// MARK: Collection View Delegate
//-------------------------------------------------------------------------------------------------------------
extension ElementCell: UICollectionViewDelegate {
    
}

//-------------------------------------------------------------------------------------------------------------
// MARK: Collection View Data Source
//-------------------------------------------------------------------------------------------------------------
extension ElementCell: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ElementCollectionCell.classIdentifier(), for: indexPath) as! ElementCollectionCell
        return cell
    }
}
