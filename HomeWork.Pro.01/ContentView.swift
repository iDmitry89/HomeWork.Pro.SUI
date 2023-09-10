//
//  ContentView.swift
//  HomeWork.Pro.01
//
//  Created by Dmitry on 03.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelection: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            DashboardScreen(tabSelection: $tabSelection)
                .tag(0)
                .tabItem {
                    Label("Главная", systemImage: "house")
                }
            
            ProfileScreen()
                .tag(1)
                .tabItem {
                    Label("Профиль", systemImage: "person.circle")
                }
            
            TasksScreen()
                .tag(2)
                .tabItem {
                    Label("Задания", systemImage: "square.3.layers.3d.middle.filled")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
