//
//  BarChartExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI
import Charts

struct BarChartExample: View {
    
    let data: [Movie] = [
        .init(genre: "Action", title: "Die Hard", ticketPrice: 12.99, ticketsSold: 1211),
        .init(genre: "Drama", title: "The Godfather", ticketPrice: 10.99, ticketsSold: 2041),
        .init(genre: "Comedy", title: "Superbad", ticketPrice: 9.99, ticketsSold: 1000),
        .init(genre: "Horror", title: "The Shining", ticketPrice: 8.99, ticketsSold: 1500),
        .init(genre: "Sci-Fi", title: "Star Wars", ticketPrice: 11.99, ticketsSold: 1200)
    ]

    var body: some View {
        Chart {
            ForEach(data) { item in
                BarMark(
                    x: .value("Movie", item.title),
                    y: .value("Revenue", item.revenue)
                )
                .cornerRadius(12)
            }
        }
    }
}

#Preview {
    BarChartExample()
}
