//
//  ChartModels.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import Foundation

struct Movie: Identifiable {
    var id = UUID()
    var genre: String
    var title: String
    var ticketPrice: Double
    var ticketsSold: Int
    var revenue: Double {
        Double(ticketsSold) * ticketPrice
    }
}

struct HeartRate: Identifiable {
    var id = UUID()
    var date: Date
    var min: Int
    var max: Int
}
