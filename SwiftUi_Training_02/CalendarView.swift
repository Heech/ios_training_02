//
//  CalendarScreen.swift
//  SwiftUi_Training_02
//
//  Created by Christofer Henriksson on 2022/04/17.
//

import SwiftUI

struct CalendarView: View {
    @State private var isShowingRegistrationView = false
    
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
            // hidden RegistrationView navigation link
            NavigationLink(destination: RegistrationView(), isActive: $isShowingRegistrationView) { EmptyView() }
            
            Text(viewModel.title)
            
            Text("count: \(viewModel.count)")
            Button(action: {
                viewModel.increaseCount()
            }) {
                Text("increase count")
            }
        }
        .floatingActionButton(
            color: Color(hex: 0x3AD6B2),
            image: Image(systemName: "plus")
                .foregroundColor(.white)) {
            isShowingRegistrationView = true
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
