//
//  TodoItemView.swift
//  SimpleTodo
//
//  Created by Noah Sadir on 2/19/24.
//

import SwiftUI

struct TodoItemView: View {
    var item: TodoItem
    var deleteAction: (TodoItem) -> Void
    
    // [4] You don't need to create any new views; all
    //     you need to do is add view modifiers to the
    //     existing UI elements to match the guideline
    
    var body: some View {
        HStack {
            Text(item.description)
                .fontWeight(.bold)
            Spacer()
            Button(action: {
                deleteAction(item)
            }) {
                HStack {
                    Image(systemName: "trash")
                    Text("Delete")
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.pink)
        }
        .padding()
    }
}

#Preview {
    TodoItemView(item: TodoItem("Test item"), deleteAction: {_ in 
        print("delete item")
    })
}
