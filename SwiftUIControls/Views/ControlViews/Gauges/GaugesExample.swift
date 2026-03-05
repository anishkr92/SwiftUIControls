//
//  GaugesExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI

struct GaugesExample: View {
    let gaugeValue: Double = 0.5
    
    var body: some View {
        VStack(spacing: 20) {
            Gauge(value: 0.5) {
                Text("Simple Gauge")
            }
            
            Gauge(
                value: gaugeValue,
                label: {
                    Text("Labelled Gauge")
                },
                currentValueLabel: { Text("\(Int(gaugeValue * 100))") },
                minimumValueLabel: { Text("0") },
                maximumValueLabel: { Text("100") }
            )
            
            Text("Custom Styled Gauges")
            
            Gauge(
                value: gaugeValue,
                label: {
                    Text("Accessory Linear Gauge")
                },
                currentValueLabel: { Text("\(Int(gaugeValue * 100))") },
                minimumValueLabel: { Text("0") },
                maximumValueLabel: { Text("100") }
            )
            .gaugeStyle(.accessoryLinear)
//            .foregroundStyle(.blue)
            .tint(.pink)
            
            Gauge(
                value: gaugeValue,
                label: {
                    Text("Accessory Linear Capacity Gauge")
                },
                currentValueLabel: { Text("\(Int(gaugeValue * 100))") },
                minimumValueLabel: { Text("0") },
                maximumValueLabel: { Text("100") }
            )
            .gaugeStyle(.accessoryLinearCapacity)
            .tint(.pink)
            
            Gauge(
                value: gaugeValue,
                label: {
                    Text("Accessory Linear Capacity Gauge")
                },
                currentValueLabel: {
                    Text("\(Int(gaugeValue * 100))")
                        .foregroundStyle(.orange)
                },
                minimumValueLabel: { Text("0") },
                maximumValueLabel: { 
                    Text("100")
                        .foregroundStyle(.cyan)
                }
            )
            .gaugeStyle(.accessoryCircular)
            .tint(.pink)
            
            Gauge(
                value: gaugeValue,
                label: {
                    Text("Accessory Linear Capacity Gauge")
                },
                currentValueLabel: {
                    Text("\(Int(gaugeValue * 100))")
                        .font(.system(size: 120))
                        .bold()
                        .foregroundStyle(.orange)
                }
            )
            .gaugeStyle(.accessoryCircularCapacity)
            .tint(.pink)
        }
        .padding()
    }
}

#Preview {
    GaugesExample()
}
