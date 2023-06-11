//
//  TastListView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 21.05.23.
//

import SwiftUI

struct TaskListView: View {
    
    private var sampleTasks: [TaskModel] = [
        TaskModel(title: "Haushalt"),
        TaskModel(title: "Fahrrad putzen"),
        TaskModel(title: "Gitarre spielen")
    ]
    var body: some View {
        List {
            ForEach(sampleTasks) { task in
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
