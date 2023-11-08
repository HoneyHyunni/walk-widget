//
//  ContentView.swift
//  WalkWidget
//
//  Created by Sanghyun on 10/31/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isYellow = true
    
    var body: some View {
        ZStack {
            self.setBackground()
            VStack {
                Toggle(isOn: $isYellow) {
                    Text("Set Background Color")
                        .foregroundColor(.black)
                }
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    private func setBackground() -> Color {
        return self.isYellow ? Color("Background") : Color("BackgroundBlue")
    }
}

#Preview {
    ContentView()
}
