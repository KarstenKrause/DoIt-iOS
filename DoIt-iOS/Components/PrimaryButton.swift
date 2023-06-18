//
//  PrimaryButton.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 15.06.23.
//

import SwiftUI

struct PrimaryButton: View {
    private let title: String
    @Binding private var active: Bool
    private let action: () -> Void
    
    init(_ title: String, active: Binding<Bool>,action: @escaping () -> Void) {
        self.title = title
        self._active = active
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Text(self.title)
                    .foregroundColor(.white)
            }
            
            .frame(maxWidth: .infinity)
            .frame(height: 35)
            .background(self.active ? Color(.blue) : Color(.blue).opacity(0.4))
            .cornerRadius(25)
            .padding()
            
        }
        .disabled(!self.active)
        
    }
}


struct PrimaryButton_Previews: PreviewProvider {
    
    static var previews: some View {
        PrimaryButton("Test", active: .constant(false)) {
            // Aktion des Buttons
            print("Button wurde geklickt")
        }
    }
}
