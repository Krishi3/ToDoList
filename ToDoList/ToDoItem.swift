//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Krishi Dalal on 2023-07-18.
//

import Foundation

class ToDoItem: Identifiable {
    var id = UUID()
    var title = ""
    var isImportant = false
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }

}
