//
//  MainView.swift
//  WalkWidget
//
//  Created by Sanghyun on 10/31/23.
//

import SwiftUI

struct MainView: View {
    @State private var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color("Background")
            VStack {
                Text("Steps")
                    .foregroundColor(.black)
                Text(self.viewModel.steps?.description ?? "no steps")
                    .foregroundColor(.black)
                    .bold()
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    MainView()
}
