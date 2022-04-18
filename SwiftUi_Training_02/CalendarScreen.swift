//
//  CalendarScreen.swift
//  SwiftUi_Training_02
//
//  Created by Christofer Henriksson on 2022/04/17.
//

import SwiftUI

struct CalendarView: View {
    
//    @StateObject private var viewModel = CalendarViewModel()
    @ObservedObject private var viewModel = CalendarViewModel()

    var body: some View {
        VStack {
            Text(viewModel.name)
            
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
