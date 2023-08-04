//
//  ContentView.swift
//  realmCRUD
//
//  Created by Yuya Hirose on 2023/08/05.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    
    @State var todo:String = ""
    
    
    var body: some View {
        VStack {
            HStack{
                Text("Todo")
                Spacer()
            }
            InputTodo(todo: $todo).textFieldStyle(.roundedBorder)
            addBtn(todo: $todo).padding()
            
            List(todos) { todo in
                Text(todo.title)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
