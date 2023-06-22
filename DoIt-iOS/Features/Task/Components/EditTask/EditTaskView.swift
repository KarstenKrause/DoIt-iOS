//
//  SheetView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 18.05.23.
//

import SwiftUI

struct EditTaskView: View {
    let task: TaskModel
    @State private var title: String
    
    init(task: TaskModel) {
            self.task = task
            self._title = State(initialValue: task.title)
        }
    
    var body: some View {
        VStack {
            TextField("Edit Task title", text: $title)
                .padding()
        }
    }
}

//struct EditTaskView_Previews: PreviewProvider {
//    static let testTask = TaskModel(title: "Something important to do")
//    static var previews: some View {
//        EditTaskView(task: testTask)
//    }
//}
