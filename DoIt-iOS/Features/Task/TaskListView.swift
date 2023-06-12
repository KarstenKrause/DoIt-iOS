//
//  TastListView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 21.05.23.
//

import SwiftUI

struct TaskListView: View {
    
    @State private var sampleTasks: [TaskModel] = [
        TaskModel(title: "Haushalt"),
        TaskModel(title: "Fahrrad putzen"),
        TaskModel(title: "Gitarre spielen")
    ]
    var body: some View {
        List {
            ForEach(sampleTasks, id: \.self) { task in
                TaskView(taskVM: TaskViewModel(task: task))
            }
            
            .onDelete(perform: delete)
        }

    }
    
    func delete(at offsets: IndexSet) {
        sampleTasks.remove(atOffsets: offsets)
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
       TaskListView()
    }
}
