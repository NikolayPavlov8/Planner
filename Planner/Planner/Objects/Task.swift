//
//  Task.swift
//  Planner
//
//  Created by Nikolai Pavlov on 05/06/2019.
//  Copyright © 2019 Nikolai Pavlov. All rights reserved.
//

import Foundation

class Task {
    
    var name:String = "Задача"
    var category:String?
    var deadline:Date?
    var priority:String?
    
    init(name:String, category:String, deadline:Date) {
        self.name = name
        self.category = category
        self.deadline = deadline
    }
    
    init(name:String, category:String) {
        self.name = name
        self.category = category
    }
    
    init(name:String) {
        self.name = name
    }
    
}
