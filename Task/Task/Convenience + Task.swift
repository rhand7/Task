//
//  Convenience + Task.swift
//  Task
//
//  Created by handje on 6/17/17.
//  Copyright © 2017 Rob Hand. All rights reserved.
//

import Foundation
import CoreData

extension Task {
    
    convenience init(title: String, notes: String?, dueDate: Date? = Date(), context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: context)
        self.title = title
        self.notes = notes
        self.dueDate = dueDate as NSDate?
        self.isComplete = false
    }
}
