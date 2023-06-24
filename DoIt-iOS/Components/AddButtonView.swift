//
//  AddButtonView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 23.04.23.
//

import SwiftUI

struct AddButtonView: View {
    @Binding var showAddView: Bool
    @ObservedObject var tasksVM: TasksViewModel
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                self.showAddView.toggle()
            } label: {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 55))
            }
        }
        .sheet(isPresented: $showAddView) {
            CreateTaskView(tasksVM: tasksVM)
                .presentationDetents([.fraction(0.45)])
        }
    }
}

struct AddButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
