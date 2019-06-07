//
//  TaskListCell.swift
//  Planner
//
//  Created by Nikolai Pavlov on 07/06/2019.
//  Copyright © 2019 Nikolai Pavlov. All rights reserved.
//

import UIKit

class TaskListCell: UITableViewCell {
    
    
    @IBOutlet weak var labelTaskName: UILabel!
    
    @IBOutlet weak var labelTaskCategory: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
