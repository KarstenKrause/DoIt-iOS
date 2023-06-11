//
//  TaskModel.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import Foundation

struct TaskModel: Identifiable {
    let id = UUID()
    let creationDate = Date()
    var done: Bool = false
    var title: String
    var description: String?
    var dueDate: Date?
    var prority: Priority?
    var subTask: [TaskModel]?
}
