//
//  TaskViewModel.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var title: String
    @Published var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
}
