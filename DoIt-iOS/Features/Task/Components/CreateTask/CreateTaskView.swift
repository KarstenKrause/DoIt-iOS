//
//  CreateTaskView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 10.06.23.
//

import SwiftUI

struct CreateTaskView: View {
    @State private var title = ""
    @State private var description = ""
    @State private var showDatePicker = false
    
    
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    TextField("Title", text: $title)
                        .font(.system(size: 25))

                    TextField("Description", text: $description, axis: .vertical)
                    
                    HStack {
                        Button {
                            showDatePicker.toggle()
                        } label: {
                            Image(systemName: "calendar")
                                .font(.system(size: 23))
                        }
                        .sheet(isPresented: $showDatePicker) {
                            DatePickerView()
                        }
                        
                        Spacer()
                        
                        Button {
                            print("Reminder Selected")
                        } label: {
                            Image(systemName: "alarm")
                                .font(.system(size: 23))
                        }
                        
                        Spacer()
                        
                        Button {
                            print("Priotity-Secteded")
                        } label: {
                            Image(systemName: "flag")
                                .font(.system(size: 23))
                        }


                        
                                
                    }
                    .padding(.top, 20)
                }
                .padding(.top)
                
            }
            
            .padding()
            Button {
                print("create")
            } label: {
                VStack {
                    Text("Create Task")
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 35)
                .background(Color(.blue))
                .cornerRadius(25)
                .padding()
                
            }
        }
    }
}

struct CreateTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTaskView()
    }
}
