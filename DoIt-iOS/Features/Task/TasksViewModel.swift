//
//  TaskViewModel.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import Foundation
import CoreData

class TasksViewModel: ObservableObject {
    private var dataController = DataController(name: "DoIt")
    
    @Published var tasks: [Task] = []
    
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        let request = NSFetchRequest<Task>(entityName: "Task")
        request.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
        
        do {
            tasks = try dataController.container.viewContext.fetch(request)
            
        } catch {
            print("Error on fetching Tasks")
        }
    }
    
    
    func addTask(title: String) {
        let newTask = Task(context: dataController.container.viewContext)
        newTask.id = UUID()
        newTask.title = title
        newTask.done = false
        newTask.creationDate = Date.now
        
        save()
        fetchData()
    }
    
    func save() {
        try? dataController.container.viewContext.save()
    }
    
    func delete(at offsets: IndexSet) {
        for offset in offsets {
            let task = tasks[offset]
            dataController.container.viewContext.delete(task)
        }
        
        save()
        fetchData()
    }
}
