//
//  TastListView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 21.05.23.
//

import SwiftUI
import CoreData

struct TaskListView: View {
    @ObservedObject var tasksVM: TasksViewModel
 
    
    
    var body: some View {
        List {
            ForEach(tasksVM.tasks, id: \.self) { task in
                TaskView(title: task.title ?? "", done: task.done)
            }
            .onDelete(perform: tasksVM.delete)
        }
    }
    
//    func delete(at offsets: IndexSet) {
//        for offset in offsets {
//            let task = tasks[offset]
//            moc.delete(task)
//        }
//        try? moc.save()
//    }
    
}

//struct TaskListView_Previews: PreviewProvider {
//
//    static var previews: some View {
//       TaskListView()
//    }
//}
