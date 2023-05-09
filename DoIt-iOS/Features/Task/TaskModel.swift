//
//  TaskModel.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import Foundation

struct TaskModel: Identifiable {
    let id = UUID()
    var done: Bool = false
    var description: String
    var subTast: SubTaskModel?
}
