//
//  SubTaskModel.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 09.05.23.
//

import Foundation

struct SubTaskModel: Identifiable {
    let id = UUID()
    var done: Bool
    var description: String
}
