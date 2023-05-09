//
//  TaskViewModel.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var task: TaskModel
    
    init(task: TaskModel) {
        self.task = task
    }
}
