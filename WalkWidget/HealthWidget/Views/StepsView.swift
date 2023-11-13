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
        VStack {
            Text("Steps")
            Text(entry.steps.description)
                .bold()
        }
    }
}
