//
//  CalendarViewModel.swift
//  SwiftUi_Training_02
//
//  Created by Christofer Henriksson on 2022/04/17.
//

import Foundation

final class CalendarViewModel: ObservableObject {
    @Published var title = "Calendar Screen"
    
    @Published var count = 0
    
    func increaseCount() {
        count += 1
    }
}
