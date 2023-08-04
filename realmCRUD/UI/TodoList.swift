//
//  TodoList.swift
//  realmCRUD
//
//  Created by Yuya Hirose on 2023/08/05.
//

import SwiftUI
import RealmSwift

struct TodoList: View {
    
    @ObservedResults(Todo.self) var todos
    
    var body: some View {
        List{
            ForEach(todos.freeze()) { item in
                Text(item.title)
            }
            .onDelete{ IndexSet in
                // ここで削除できる
                $todos.remove(atOffsets: IndexSet)
            }
            }
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList()
    }
}
