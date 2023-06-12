//
//  TaskView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import SwiftUI

struct TaskView: View {
    @StateObject var taskVM: TaskViewModel
    @State private var showEditView: Bool = false
    
    var body: some View {
        
        HStack {
            CheckMark(done: taskVM.task.done)
            Text(taskVM.task.title)
                .frame( maxWidth: .infinity, alignment:.leading)
                .background(Color("PrimaryBackground"))
        
                .onTapGesture {
                    showEditView.toggle()
                }
                .sheet(isPresented: $showEditView) {
                    EditTaskView(task: taskVM.task)
                        .presentationDetents([.medium, .large])
                        .presentationDragIndicator(.visible)
                }
                
            Spacer()
        }
        
    }
}

struct TaskView_Previews: PreviewProvider {
    static let testTask = TaskModel(title: "Something important to do")
    static let previewTaskVM = TaskViewModel(task: testTask)
    
    static var previews: some View {
        TaskView(taskVM: previewTaskVM)
    }
}
