//
//  AddItemView.swift
//  SimpleTodo
//
//  Created by Noah Sadir on 2/18/24.
//

import SwiftUI

struct AddItemView: View {
    @EnvironmentObject var todoLogic: TodoViewModel
    @Binding var isVisible: Bool
    
    @State var text: String = ""
    
    var body: some View {
        // Well isn't this ugly...
        // Maybe we can make this look a little better.
        
        // [5] Add a "cancel" button. You should be able to adapt
        //     the code provided for the add button.
        // [6] Add the necessary views & view modifiers to make
        //     AddItemView conform to the guideline image
        
        /* BEGIN YOUR CODE */
        /*
        TextField("Item description", text: $text)
        Button(action: {
            todoLogic.add(item: text)
            isVisible = false
        }, label: {
            Text("Add")
        })
         */
        /* END YOUR CODE */
        
        // EXAMPLE SOLUTION
        VStack {
            Text("Add Item")
                .font(.title)
            TextField("Item description", text: $text)
                .textFieldStyle(.roundedBorder)
            HStack {
                Button(action: {
                    isVisible = false
                }, label: {
                    Spacer()
                    Text("Add")
                    Spacer()
                })
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
                Spacer()
                
                Button(action: {
                    isVisible = false
                }, label: {
                    Spacer()
                    Text("Cancel")
                    Spacer()
                })
                .buttonStyle(.borderedProminent)
            }
            Spacer()
        }
        .padding(32)
    }
}

#Preview {
    AddItemView(isVisible: .constant(true))
}
