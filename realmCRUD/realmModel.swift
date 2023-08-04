//
//  realmModel.swift
//  realmCRUD
//
//  Created by Yuya Hirose on 2023/08/05.
//

import Foundation
import RealmSwift

class realmModel:ObservableObject{
    
    var config = Realm.Configuration.self
    
    private let realm = try! Realm()
    
    var todos: Results<Todo>{
        realm.objects(Todo.self)
    }
    
    func addTodo(todo: String){
        let todos = Todo()
        todos.id = Date()
        todos.title = todo
        
        try! realm.write{
            realm.add(todos)
        }
    }
    
    
    func getTodo() -> Results<Todo>{
        let data = realm.objects(Todo.self)
        print(data[0])
        return data
    }
}
