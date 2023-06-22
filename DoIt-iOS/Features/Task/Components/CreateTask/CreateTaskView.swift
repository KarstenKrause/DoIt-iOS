//
//  CreateTaskView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 10.06.23.
//

import SwiftUI

struct CreateTaskView: View {
    @Environment(\.managedObjectContext) var moc
    @State private var title = ""
    @State private var description = ""
    @State private var showDatePicker = false
    
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    TextField("Title", text: $title)
                        .font(.system(size: 25))
                    
                    TextField("Description", text: $description)
                    
                    HStack {
                        Button {
                            showDatePicker.toggle()
                        } label: {
                            Image(systemName: "calendar")
                                .font(.system(size: 23))
                            Text("No Date")
                                .font(.system(size: 14))
                        }
                        .sheet(isPresented: $showDatePicker) {
                            DatePickerView()
                                .presentationDragIndicator(.visible)
                        }
                        
                        
                        Spacer()
                        
                        Button {
                            print("Reminder Selected")
                        } label: {
                            Image(systemName: "alarm")
                                .font(.system(size: 23))
                            Text("Reminder")
                                .font(.system(size: 14))
                        }
                        
                        Spacer()
                        
                        Button {
                            print("Priotity Selected")
                        } label: {
                            Image(systemName: "flag")
                                .font(.system(size: 23))
                            Text("Priotity")
                                .font(.system(size: 14))
                        }
                    }
                    .padding(.top, 20)
                }
                .padding(.top)
                
            }
            .padding()
            
            PrimaryButton("Create", active: Binding(
                get: { !title.isEmpty },
                set: { _ in }
            )) {
                let newTask = Task(context: moc)
                newTask.id = UUID()
                newTask.title = title
                newTask.done = false
                newTask.creationDate = Date.now
                
                try? moc.save()
            }
        }
    }
}

struct CreateTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTaskView()
    }
}
