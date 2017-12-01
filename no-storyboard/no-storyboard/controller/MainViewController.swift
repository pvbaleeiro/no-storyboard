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
    lazy var tbvElements: UITableView = {
        let tbv = UITableView()
        tbv.translatesAutoresizingMaskIntoConstraints = false
        tbv.delegate = self
        tbv.dataSource = self
        tbv.register(ElementCell.self, forCellReuseIdentifier: ElementCell.classIdentifier())
        tbv.rowHeight = 300
        tbv.separatorStyle = .none
        tbv.allowsSelection = false
        return tbv
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
    

    //-------------------------------------------------------------------------------------------------------------
    // MARK: Setup
    //-------------------------------------------------------------------------------------------------------------
    func setupLayout() {
        
        //NavBar
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //Add scroll in superview
        view.addSubview(tbvElements)
        
        //Add contrainsts
        tbvElements.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tbvElements.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tbvElements.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tbvElements.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func setupData() {
        //When the user swipes, the navigation controller's navigationBar & toolbar will be hidden (on a swipe up) or shown (on a swipe down). The toolbar only participates if it has items.
        navigationController?.hidesBarsOnSwipe = true
    }
    
    func setupText() {
        title = "Main"
    }
}


//-------------------------------------------------------------------------------------------------------------
// MARK: Table View Delegate
//-------------------------------------------------------------------------------------------------------------
extension MainViewController: UITableViewDelegate {
    
}

//-------------------------------------------------------------------------------------------------------------
// MARK: Table View Data Source
//-------------------------------------------------------------------------------------------------------------
extension MainViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //
        let cell = tableView.dequeueReusableCell(withIdentifier: ElementCell.classIdentifier(), for: indexPath) as! ElementCell
        return cell
    }
}
