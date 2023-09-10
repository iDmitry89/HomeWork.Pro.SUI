//
//  VehicleScreen.swift
//  HomeWork.Pro.01
//
//  Created by Dmitry on 03.09.2023.
//

import SwiftUI

struct Vechicle: Identifiable {
    let name: String
    let id: UUID = .init()
}

final class VechicleListViewModel: ObservableObject {
    
    @Published var isSheetShowed: Bool = false
    
    @Published private(set) var vechicles = [
        Vechicle(name: "🚗"),
        Vechicle(name: "🚙"),
        Vechicle(name: "🚕"),
        Vechicle(name: "🏎️"),
        Vechicle(name: "✈️"),
        Vechicle(name: "🚢"),
        Vechicle(name: "🚐"),
        Vechicle(name: "🚌"),
        Vechicle(name: "🚃"),
    ]
}

struct VechicleScreen: View {
    
    @StateObject var vechicleListVM: VechicleListViewModel = .init()
    
    //@EnvironmentObject var vechicleListVM: VechicleListViewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            List (vechicleListVM.vechicles) { vechicle in
                NavigationLink (destination: Text(vechicle.name).font(.system(size: 200))) {
                    HStack {
                        Text(vechicle.name)
                    }
                }
                .listRowSeparator(.hidden)
            }
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Назад")
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Транспортные средства")
        //.navigationBarTitleDisplayMode(.large)
        .navigationBarBackButtonHidden(true)
    }
}

struct VechicleScreen_Previews: PreviewProvider {
    static var previews: some View {
        VechicleScreen()
    }
}
