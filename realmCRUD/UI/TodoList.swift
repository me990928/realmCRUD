//
//  TodoList.swift
//  realmCRUD
//
//  Created by Yuya Hirose on 2023/08/05.
//

import SwiftUI

struct TodoList: View {
    
    @ObservedResults(Todo.self) var todos
    
    var body: some View {
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
