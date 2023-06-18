//
//  CheckMark.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import SwiftUI


struct CheckMark: View {
    @State var done: Bool
    
    var body: some View {
        Button(action: {self.done.toggle()}) {
            Image(systemName: done ? "checkmark.circle.fill" : "circle").font(.system(size:25))
                
        }
    }
}

struct CheckMark_Previews: PreviewProvider {
    static var previews: some View {
        CheckMark(done: false)
    }
}
