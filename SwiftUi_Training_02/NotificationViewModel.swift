//
//  NotificationViewModel.swift
//  SwiftUi_Training_02
//
//  Created by Christofer Henriksson on 2022/04/18.
//

import Foundation

// test2: ViewModel as an extension on NotificationView
// https://www.hackingwithswift.com/books/ios-swiftui/introducing-mvvm-into-your-swiftui-project
extension NotificationView {
    @MainActor class ViewModel: ObservableObject {
        @Published var title: String = "Notifications Screen"
    }
}
