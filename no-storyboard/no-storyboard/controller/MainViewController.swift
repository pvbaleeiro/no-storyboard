//
//  MainViewController.swift
//  no-storyboard
//
//  Created by Victor Baleeiro on 28/11/17.
//  Copyright © 2017 Going2. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    //-------------------------------------------------------------------------------------------------------------
    // MARK: Properties
    //-------------------------------------------------------------------------------------------------------------
    //Views
    var scrContent: UIScrollView = {
        let scr = UIScrollView()
        scr.translatesAutoresizingMaskIntoConstraints = false
        scr.backgroundColor = UIColor.green
        scr.alwaysBounceVertical = true
        return scr
    }()
    
    
    //-------------------------------------------------------------------------------------------------------------
    // MARK: Lifecycle
    //-------------------------------------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()

        //Sets
        setupLayout()
        setupData()
        setupText()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //-------------------------------------------------------------------------------------------------------------
    // MARK: Setup
    //-------------------------------------------------------------------------------------------------------------
    func setupLayout() {
        
        //NavBar
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //Add scroll in superview
        view.addSubview(scrContent)
        
        //Add contrainsts
        scrContent.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrContent.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrContent.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrContent.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func setupData() {
        //When the user swipes, the navigation controller's navigationBar & toolbar will be hidden (on a swipe up) or shown (on a swipe down). The toolbar only participates if it has items.
        navigationController?.hidesBarsOnSwipe = true
    }
    
    func setupText() {
        title = "Main"
    }
}
