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
        VStack {
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
            }.border(Color.red)
            .frame(width: 200, height: 200)
            
            Spacer()
            
            ScrollView {
                PlanItem(
                    time: "12:00~13:00",
                    companyName: "Company name",
                    description: "description long text here very very long and should not show more than one line"
                )
                
                PlanItem(
                    time: "12:00~13:00",
                    companyName: "Company name",
                    description: "description long text here very very long and should not show more than one line"
                )
                
                PlanItem(
                    time: "12:00~13:00",
                    companyName: "Company name",
                    description: "description long text here very very long and should not show more than one line"
                )
                
                PlanItem(
                    time: "12:00~13:00",
                    companyName: "Company name",
                    description: "description long text here very very long and should not show more than one line"
                )

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

struct PlanItem: View {
    let time: String
    let companyName: String
    let description: String
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text(time)
                    .font(.subheadline)
                Text(companyName)
                    .bold()
                Text(description)
                    .lineLimit(1)
            }
            
            Spacer()
            
            Image(systemName: "chevron.forward")
        }
        .padding(.leading, 8)
        .padding(.trailing, 8)
        .padding(.bottom, 8)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
