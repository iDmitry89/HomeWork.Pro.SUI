//
//  ProfileScreen.swift
//  HomeWork.Pro.01
//
//  Created by Dmitry on 03.09.2023.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        VStack {
            
            NavigationView {
                VStack {
                    Text("Страница профиля").font(.largeTitle)
                    NavigationLink(destination: VechicleScreen()) {
                        Text("Транспортные средства")
                            .font(.largeTitle)
                            .padding()
                            .background(Color.mint)
                    }
                }
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
