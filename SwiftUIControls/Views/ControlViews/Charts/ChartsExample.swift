//
//  ChartsExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI
import Charts

struct ChartsExample: View {
    
    
    @State private var chartsList: [ChartItem] = [
        .init(title: "Bar Chart", chartView: BarChartExample()),
        .init(title: "Range Chart", chartView: RangeChartExample()),
    ]
    
    var body: some View {
        List {
            ForEach($chartsList, id: \.title) { $item in
                DisclosureGroup(isExpanded: $item.isExpanded) {
                    AnyView(item.chartView)
                        .frame(height: 300)
                } label: {
                    Button(item.title) {
                        withAnimation {
                            item.isExpanded.toggle()
                        }
                    }
                    .foregroundStyle(.primary)
                    .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ChartsExample()
}
