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
        NavigationView {
            VStack {
                HStack{
                    Text("Todo")
                    Spacer()
                }
                InputTodo(todo: $todo).textFieldStyle(.roundedBorder)
                addBtn(todo: $todo).padding()
                
                TodoList().listStyle(.plain)
                
            }
            .padding()
        }.navigationTitle("RealmTodo")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
