//
//  TastListView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 21.05.23.
//

import SwiftUI
import CoreData

struct TaskListView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [SortDescriptor(\.creationDate, order: SortOrder.reverse)]) var tasks: FetchedResults<Task>
    
    
    var body: some View {
        List {
            ForEach(tasks, id: \.self) { task in
                TaskView(taskVM: TaskViewModel(title: task.title ?? "", done: task.done))
            }
            .onDelete(perform: delete)
        }
    }
    
    func delete(at offsets: IndexSet) {
        for offset in offsets {
            let task = tasks[offset]
            moc.delete(task)
        }
        try? moc.save()
    }
    
}

struct TaskListView_Previews: PreviewProvider {

    static var previews: some View {
       TaskListView()
    }
}
