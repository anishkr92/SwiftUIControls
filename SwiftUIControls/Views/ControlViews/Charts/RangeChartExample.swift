//
//  RangeChartExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI
import Charts

struct RangeChartExample: View {
    
    let data: [HeartRate] = [
        HeartRate(date: Calendar.current.startOfDay(for: .now), min: 72, max: 121),
        HeartRate(date: getDate(byAdding: .day, value: 1), min: 85, max: 144),
        HeartRate(date: getDate(byAdding: .day, value: 2), min: 65, max: 102),
        HeartRate(date: getDate(byAdding: .day, value: 3), min: 55, max: 165),
        HeartRate(date: getDate(byAdding: .day, value: 4), min: 84, max: 106),
        HeartRate(date: getDate(byAdding: .day, value: 5), min: 60, max: 150),
        HeartRate(date: getDate(byAdding: .day, value: 6), min: 80, max: 116),
    ]
    
    var body: some View {
        Chart {
            ForEach(data) { item in
                BarMark(
                    x: .value("Day", item.date, unit: .weekdayOrdinal),
                    yStart: .value("Min", item.min),
                    yEnd: .value("Max", item.max),
                    width: 20
                )
                .foregroundStyle(.pink)
                .clipShape(.capsule)
            }
        }
        .chartXAxis {
            AxisMarks(values: .stride(by: .day)) { _ in
                AxisValueLabel(format: .dateTime.weekday(.abbreviated), centered: true)
            }
        }
        .chartYScale(domain: [50, 190])
//        .chartYAxis {
//            AxisMarks(values: .automatic(desiredCount: 5))
//        }
    }
    
    static func getDate(byAdding component: Calendar.Component, value: Int) -> Date {
        let baseDate = Calendar.current.startOfDay(for: .now)
        return Calendar.current.date(byAdding: component, value: value, to: baseDate)!
    }
}

#Preview {
    RangeChartExample()
}
