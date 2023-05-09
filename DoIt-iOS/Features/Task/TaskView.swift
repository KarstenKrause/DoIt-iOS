//
//  TaskView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import SwiftUI

struct TaskView: View {
    @StateObject var taskVM: TaskViewModel
    
    var body: some View {
        HStack {
            CheckMark()
            Text("I have to finish this app someday!")
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static let testTask = TaskModel(description: "Something important to do")
    static let previewTaskVM = TaskViewModel(task: testTask)
    
    static var previews: some View {
        TaskView(taskVM: previewTaskVM)
    }
}
