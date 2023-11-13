//
//  StepsView.swift
//  HealthWidgetExtension
//
//  Created by Sanghyun on 11/9/23.
//

import SwiftUI

struct StepsView: View {
    var entry: StepsProvider.Entry
    
    var body: some View {
        ZStack {
            Color(.widgetBackgroundOfSteps)
                .padding(-100)
            VStack(alignment: .leading) {
                Image(.steps)
                    .resizable()
                    .frame(width: 31, height: 31)
                Text("오늘의 걸음수")
                Text(entry.steps.description)
                ProgressView(value: Double(entry.steps) / 10000.0)
            }
        }
    }
}
