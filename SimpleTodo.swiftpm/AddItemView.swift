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
        Text("Add Item")
            .bold()
            .font(.title)
        TextField("Item description", text: $text)
            .multilineTextAlignment(.center)
        HStack{
            Button(action: {
                todoLogic.add(item: text)
                isVisible = false
            }, label: {
                Text("Add")
                    .foregroundStyle(.white)
                    .frame(width: 150)
                    .background(Color.green)
            })
            
            Button(action: {
                todoLogic.reset()
                isVisible = false
            }, label: {
                Text("Cancel")
                    .foregroundStyle(.white)
                    .frame(width: 150)
                    .background(Color.blue)
            })
        }
        
        Spacer()
        /* END YOUR CODE */
    }
}

#Preview {
    AddItemView(isVisible: .constant(true))
}
