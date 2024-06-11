//
//  ChartsExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI
import Charts

struct ChartsExample: View {
    let chartsList: [UIControlItem] = [
        UIControlItem(title: "Bar Chart", view: BarChartExample()),
        UIControlItem(title: "Range Chart", view: RangeChartExample()),
    ]
    
    var body: some View {
        List {
            ForEach(chartsList, id: \.title) { item in
                DisclosureGroup {
                    AnyView(item.view)
                        .frame(height: 300)
                } label: {
                    Text(item.title)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ChartsExample()
}
