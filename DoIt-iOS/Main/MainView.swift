//
//  MainView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 23.04.23.
//

import SwiftUI

struct MainView: View {
    @State private var showAddView = false
    @StateObject var tasksVM = TasksViewModel()
    var body: some View {
        
            ZStack {
                TaskListView(tasksVM: tasksVM)
                AddButtonView(showAddView: $showAddView, tasksVM: tasksVM)
            }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
                .preferredColorScheme(.light)
            MainView()
                .preferredColorScheme(.dark)
        }
    }
}
