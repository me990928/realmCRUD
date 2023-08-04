//
//  Todo.swift
//  realmCRUD
//
//  Created by Yuya Hirose on 2023/08/05.
//

import Foundation
import RealmSwift

class Todo: Object,Identifiable{
    @Persisted var id:Date
    @Persisted var title = ""
}
