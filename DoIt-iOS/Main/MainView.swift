//
//  MainView.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 23.04.23.
//

import SwiftUI

struct MainView: View {
    @State private var showAddView = false
    var body: some View {
        NavigationView {
            ZStack {
                Text("Do it!")
                AddButtonView(showAddView: $showAddView)
            }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
