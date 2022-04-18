//
//  NotificationViewModel.swift
//  SwiftUi_Training_02
//
//  Created by Christofer Henriksson on 2022/04/18.
//

import Foundation

extension MainView {
    @MainActor class ViewModel: ObservableObject {
        @Published var unreadNotificationCount: String? = "2"
        
        func clearUnreadNotifications() {
            unreadNotificationCount = nil
        }
    }
}
