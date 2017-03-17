//
//  ItemListViewController.swift
//  Todo
//
//  Created by Jernej Zorec on 17/03/2017.
//  Copyright © 2017 Jernej Zorec. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var dataProvider: ItemListDataProvider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
