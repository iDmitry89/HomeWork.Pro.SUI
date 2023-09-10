//
//  TasksScreen.swift
//  HomeWork.Pro.01
//
//  Created by Dmitry on 03.09.2023.
//

import SwiftUI

struct TasksScreen: View {
    
    @State private var peremen = false
    
    var body: some View {
        VStack {
            BasicUIViewRepresentable()
//                .frame(height: 56)
            Button {
                peremen.toggle()
            } label: {
                Label("Sheet", systemImage: "door.left.hand.open")
            }
            .sheet(isPresented: $peremen, content: {
                Text("🚀").font(.system(size: 200))
            })
            .buttonStyle(.borderedProminent)
        }
    }
}

struct BasicUIViewRepresentable: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView()
        view.backgroundColor = .magenta
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

struct TasksScreen_Previews: PreviewProvider {
    static var previews: some View {
        TasksScreen()
    }
}
