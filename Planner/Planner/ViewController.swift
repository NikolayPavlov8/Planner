//
//  ViewController.swift
//  Planner
//
//  Created by Nikolai Pavlov on 03/06/2019.
//  Copyright © 2019 Nikolai Pavlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // симулятор загрузки формы (чтобы успеть посмотреть launchscreen) - в рабочем проекте естественно нужно будет удалить
        for i in 0...100_000 {
            print(i)
        }
        
    }


}

