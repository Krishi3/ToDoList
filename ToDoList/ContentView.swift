//
//  ContentView.swift
//  ToDoList
//
//  Created by Krishi Dalal on 2023-07-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                     .font(.system(size: 40))    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            Button(action: {
                                
            }) {
            Text("+")
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
