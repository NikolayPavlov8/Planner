//
//  TaskListController.swift
//  Planner
//
//  Created by Nikolai Pavlov on 05/06/2019.
//  Copyright © 2019 Nikolai Pavlov. All rights reserved.
//

import UIKit

class TaskListController: UITableViewController {
    
    let dateFormatter = DateFormatter()
    
    // временный массив для тестовых данных
    private var taskList:[Task] = [
        Task(name: "Задача 1", category: "Категория 1"),
        Task(name: "Задача 2", category: "Категория 2"),
        Task(name: "Задача 3", category: "Категория 3", deadline: Date()),
        Task(name: "Задача 4", category: "Категория 4")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .short

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: table view
    
    // методы вызываются автоматически компонентом tableView
    
    // сколько секций нужно отображать в таблице
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // сколько будет записей в каждой секции
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskList.count
    }
    

    // отображение данных в строке
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as? TaskListCell else {
            fatalError("cell type")
        }
        
        let task = taskList[indexPath.row]

        cell.labelTaskName.text = task.name
        cell.labelTaskCategory.text = (task.category ?? "")
        
        // проверяем дату на пустоту
        if let deadline = task.deadline {
            cell.labelDeadline?.text = dateFormatter.string(from: deadline)
        } else {
            cell.labelDeadline?.text = ""
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
