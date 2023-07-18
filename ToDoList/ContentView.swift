//
//  ContentView.swift
//  ToDoList
//
//  Created by Krishi Dalal on 2023-07-18.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    @State var toDoItems: [ToDoItem] = []
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                     .font(.system(size: 40)).fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }) {
                Text("+")
                }
            }
            Spacer()
                .padding(.horizontal)
        }
        List {
            ForEach (toDoItems) {toDoItem in if toDoItem.isImportant == true {
                Text("‼️" + toDoItem.title)
            } else {
                Text(toDoItem.title)
            }
            }
        }
        .listStyle(.plain)
        if showNewTask {
            NewToDoView(title: "" , isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask
)
 }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
