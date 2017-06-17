//
//  TaskController.swift
//  Task
//
//  Created by handje on 6/17/17.
//  Copyright © 2017 Rob Hand. All rights reserved.
//

import Foundation
import CoreData

class TaskController {
    
    // MARK: - Properties
    
    var tasks: [Task] = []
    
    // MARK: - NSFetchedResultsController
    
    let fetchedResultsController: NSFetchedResultsController<NSFetchRequestResult>

    init() {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Task")
        let completedSortDescriptor = NSSortDescriptor(key: "isComplete", ascending: true)
        let dueDateSortDescriptor = NSSortDescriptor(key: "dueDate", ascending: true)
        request.sortDescriptors = [completedSortDescriptor, dueDateSortDescriptor]
        self.fetchedResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: CoreDataStack.context, sectionNameKeyPath: "isComplete", cacheName: nil) 
    }
    
    // MARK: - CRUD
    
    //addNewTask
    
    func addNewTaskWith(title: String, notes: String?, dueDate: Date?) {
        
    }
    
    //updateTask
    
    func updateTask(task: Task, title: String, notes: String?, dueDate: Date?) {
        
        
    }
    
    //toggleIsComplete
    
    func toggleIsComplete(task: Task) {
        
    }
    
    //deleteTask
    
    func deleteTask(task: Task) {
        
    }
    
}
