//
//  TastListView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 21.05.23.
//

import SwiftUI

struct TaskListView: View {
    
    private var tasks: [TaskModel] = [
        TaskModel(description: "Haushalt"),
        TaskModel(description: "Fahrrad putzen"),
        TaskModel(description: "Gitarre spielen")
    ]
    var body: some View {
        List {
            ForEach(tasks) { task in
                TaskView(taskVM: TaskViewModel(task: task))
            }
        }

    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
