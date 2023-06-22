//
//  TaskModel.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import Foundation

struct TaskModel: Identifiable, Hashable {
    let id: UUID
    let creationDate = Date()
    var done: Bool = false
    var title: String
    var description: String?
    var dueDate: Date?
    var priority: Priority?
    var subTask: [TaskModel]?
}
