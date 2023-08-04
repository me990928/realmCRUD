//
//  InputTodo.swift
//  realmCRUD
//
//  Created by Yuya Hirose on 2023/08/05.
//

import SwiftUI

struct InputTodo: View {
    
    @Binding var todo:String
    
    var body: some View {
        VStack{
            TextField("Inpt Todo", text: $todo)
        }
    }
}

