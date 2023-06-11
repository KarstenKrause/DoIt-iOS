//
//  DatePickerView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 11.06.23.
//

import SwiftUI

struct DatePickerView: View {
    @State private var selectedDueDate = Date.now
    
    var body: some View {
        VStack {
            DatePicker("Enter your birthday", selection: $selectedDueDate)
                            .datePickerStyle(GraphicalDatePickerStyle())
                            .frame(maxHeight: 400)
        }
        
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
