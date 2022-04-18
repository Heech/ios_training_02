//
//  MainScreen.swift
//  SwiftUi_Training_02
//
//  Created by Christofer Henriksson on 2022/04/17.
//

import SwiftUI

struct MainView: View {
    
    enum TabItems {
        case calendar, notification
    }
    
    @State private var selectedTab = TabItems.calendar
    
    var body: some View {
        TabView (selection: $selectedTab) {
            CalendarView()
                .tabItem {
                    let image = selectedTab == TabItems.calendar ? "calendar_icon_on" : "calendar_icon_off"
                    Label("カレンダー", image: image)
                        
                }
                .tag(TabItems.calendar)
            // TODO: trying to add top border to tabItem, but doesn't seem to be supported, have to create a custom TabView?
            
            NotificationView()
                .tabItem {
                    let image = selectedTab == TabItems.notification ? "bell_icon_on" : "bell_icon_off"
                    Label("通知", image: image)
                }
                .badge(2)
                .tag(TabItems.notification)
        }
        // color of selected tab item's text
        .accentColor(Color(hex: 0x3AD6B2))
        .navigationTitle("Main Screen")
    }
}

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
