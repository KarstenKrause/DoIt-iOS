//
//  CheckMark.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import SwiftUI

struct CheckMark: View {
    @State private var done: Bool = false
    
    var body: some View {
        Button(action: {self.done.toggle()}) {
            Image(systemName: done ? "checkmark.circle" : "circle").font(.system(size:25))
                .foregroundColor(.primary)
        }
    }
}

struct CheckMark_Previews: PreviewProvider {
    static var previews: some View {
        CheckMark()
    }
}
