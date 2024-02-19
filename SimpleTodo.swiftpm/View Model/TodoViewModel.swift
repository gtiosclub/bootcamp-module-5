//
//  TodoViewModel.swift
//  SimpleTodo
//
//  Created by Noah Sadir on 2/18/24.
//

import Foundation
import SwiftUI

class TodoViewModel: ObservableObject {
    @Published var items: [TodoItem] = []
    @Published var selectedIndex: Int?
    
    func add(item: String) {
        print("[TodoViewModel.add] Adding item \"\(item)\"")
        items.append(TodoItem(item))
    }
    
    func delete(at index: Int) {
        if (index >= 0 && index < items.count) {
            print("[TodoViewModel.delete] Removing \"\(items[index].description)\" at index \(index)")
            items.remove(at: index)
        } else {
            print("[TodoViewModel.delete] Attempting to remove out of bounds item!")
        }
    }
    
    func delete(item: TodoItem) {
        for i in 0..<items.count {
            if (items[i].id == item.id) {
                print("[TodoViewModel.delete] Removing \"\(item.description)\" by object ref")
                items.remove(at: i)
                break
            }
        }
    }
    
    func edit(at index: Int, toValue val: String) {
        if (index >= 0 && index < items.count) {
            print("[TodoViewModel.edit] Editing \"\(items[index].description)\" at index \(index) to \"\(val)\"")
            items[index].description = val
        } else {
            print("[TodoViewModel.edit] Attempting to remove out of bounds item!")
        }
    }
    
    func reset() {
        print("[TodoViewModel.reset] Removing all items.")
        items.removeAll()
    }
}
