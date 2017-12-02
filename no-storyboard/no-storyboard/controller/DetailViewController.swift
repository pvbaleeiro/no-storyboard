//
//  DetailViewController.swift
//  no-storyboard
//
//  Created by Victor Baleeiro on 02/12/17.
//  Copyright © 2017 Going2. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //-------------------------------------------------------------------------------------------------------------
    // MARK: Lifecycle
    //-------------------------------------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        //Setup
        setupLayout()
        setupData()
        setupText()
    }
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Setup
    //-------------------------------------------------------------------------------------------------------------
    func setupLayout() {
        
        //Background
        view.backgroundColor = UIColor.white
    }
    
    func setupData() {
        
    }
    
    func setupText() {
        title = "Detail"
    }
}
