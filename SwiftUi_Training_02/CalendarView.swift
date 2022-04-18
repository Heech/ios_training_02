//
//  CalendarScreen.swift
//  SwiftUi_Training_02
//
//  Created by Christofer Henriksson on 2022/04/17.
//

import SwiftUI

struct CalendarView: View {
    @StateObject private var viewModel : CalendarViewModel
//    @ObservedObject private var viewModel : CalendarViewModel
    
    init() {
        // using StateObject makes the ViewModel keep it's state when switching tabs
        // while using ObservedObject seem to cause it to be reset/recreated each time (count is reset)
        self._viewModel = StateObject(wrappedValue: CalendarViewModel())
//        self._viewModel = ObservedObject(wrappedValue: CalendarViewModel())
    }

    var body: some View {
        VStack (alignment: .leading) {
            Text(viewModel.title)
            
            Text("count: \(viewModel.count)")
            Button(action: {
                viewModel.increaseCount()
            }) {
                Text("increase count")
            }
        }
    }
}

struct CalendarScreen_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
