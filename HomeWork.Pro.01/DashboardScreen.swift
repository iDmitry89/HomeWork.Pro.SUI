//
//  DashboardScreen.swift
//  HomeWork.Pro.01
//
//  Created by Dmitry on 03.09.2023.
//

import SwiftUI

struct DashboardScreen: View {
    @Binding var tabSelection: Int
    var body: some View {
        VStack {
            Text("Главная страница")
                .font(.largeTitle)
            Button(action: { self.tabSelection = 1 }) { Text("Переход") }
                .buttonStyle(.borderedProminent)
        }
    }
}

struct DashboardScreen_Previews: PreviewProvider {
    static var previews: some View {
        DashboardScreen(tabSelection: .constant(1))
    }
}
