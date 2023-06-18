//
//  DatePickerView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 11.06.23.
//

import SwiftUI

struct DatePickerView: View {
    @Environment(\.dismiss) var dismiss
    @State private var selectedDueDate = Date.now
    @State private var hasSelectedDate = false
    
    let currentDate = Date()
    
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Choose a due date")
                    .font(.title)
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.red)
                }
            }
            
            Spacer()
            DatePicker("Enter your birthday", selection: $selectedDueDate, in: currentDate..., displayedComponents: [.date])
                .datePickerStyle(GraphicalDatePickerStyle())
                .frame(maxHeight: 400)
            Spacer()
            PrimaryButton("Save", active: Binding(
                get: { hasSelectedDate },
                set: { _ in }
            )) {
                print("Date to save: \(selectedDueDate)")
                print(Date.now)
                dismiss()
            }
            .onChange(of: selectedDueDate) { _ in
                hasSelectedDate = true
            }
        }
        .padding()
        .padding(.top, 20)
        
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
