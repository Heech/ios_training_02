//
//  NotificationScreen.swift
//  SwiftUi_Training_02
//
//  Created by Christofer Henriksson on 2022/04/17.
//

import SwiftUI

struct NotificationView: View {
    @StateObject private var viewModel : ViewModel
    
    init() {
        self._viewModel = StateObject(wrappedValue: ViewModel())
    }
    
    var body: some View {
        Text(viewModel.title)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
