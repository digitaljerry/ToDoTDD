//
//  ItemCell.swift
//  Todo
//
//  Created by Jernej Zorec on 20/03/2017.
//  Copyright © 2017 Jernej Zorec. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(with item: ToDoItem) {
        
    }

}

class MockItemCell : ItemCell {
    var catchedItem: ToDoItem?
    
    override func configCell(with item: ToDoItem) {
        catchedItem = item
    }
}
