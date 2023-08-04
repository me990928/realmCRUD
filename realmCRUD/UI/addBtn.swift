//
//  addBtn.swift
//  realmCRUD
//
//  Created by Yuya Hirose on 2023/08/05.
//

import SwiftUI

struct addBtn: View {
    
    var todoModel = realmModel()
    
    @Binding var todo:String
    
    var body: some View {
        VStack{
            Button("Todo Add"){
                todoModel.addTodo(todo: todo)
            }.buttonStyle(.borderedProminent)
        }
    }
}

