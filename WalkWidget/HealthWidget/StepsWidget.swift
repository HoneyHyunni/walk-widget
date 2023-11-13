//
//  HealthWidget.swift
//  HealthWidget
//
//  Created by Sanghyun on 11/8/23.
//

import WidgetKit
import SwiftUI

struct StepsProvider: TimelineProvider {
    func placeholder(in context: Context) -> StepsEntry {
        StepsEntry(date: Date())
    }

    func getSnapshot(in context: Context, completion: @escaping (StepsEntry) -> ()) {
        let entry = StepsEntry(date: Date())
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<StepsEntry>) -> ()) {
        var entries: [StepsEntry] = []

        let currentDate = Date()
        (0..<2).forEach { minuteOffset in
            if let updateDate = Calendar.current.date(byAdding: .minute, value: minuteOffset, to: currentDate) {
                entries.append(StepsEntry(date: updateDate))
            }
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct StepsWidget: Widget {
    let kind = AppConstants.WIDGET_ID_STEPS
    
    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: StepsProvider()) { entry in
            if #available(iOS 17.0, *) {
                StepsView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                StepsView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName(AppConstants.WIDGET_NAME_STEPS)
        .description(AppConstants.WIDGET_DESCRIPTION_STEPS)
        .supportedFamilies([.systemSmall, .systemMedium])
    }
}

#Preview(as: .systemSmall) {
    StepsWidget()
} timeline: {
    StepsEntry(date: .now)
}
