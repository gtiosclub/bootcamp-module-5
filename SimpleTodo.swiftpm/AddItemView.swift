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
        VStack {
            Text("Add Item")
                .font(.title)
                .padding(.bottom, 8)

            TextField("Item description", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.bottom, 16)

            HStack {
                Button("Add") {
                    todoLogic.add(item: text)
                    isVisible = false
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                .frame(maxWidth: .infinity)
                
                Button("Cancel") {
                    isVisible = false
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                .frame(maxWidth: .infinity)
            }
            .padding(.bottom, 32)
            Spacer()
        }
        .padding(32)
        /* END YOUR CODE */
    }
}

#Preview {
    AddItemView(isVisible: .constant(true))
}
