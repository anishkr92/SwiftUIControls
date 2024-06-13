//
//  RedirectView.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 13/06/24.
//

import SwiftUI

struct RedirectView: View {
    
    private let itemName: String
    private let redirectItem: String
    
    private var controlItem: UIControlItem {
        UIControlsData.list.first { $0.title == redirectItem }!
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(itemName) is shown in \(redirectItem)")
            NavigationLink("Go to \(redirectItem)") {
                AnyView(controlItem.view)
            }
        }
    }
    
    init?(for itemName: String, to redirectItem: String) {
        guard UIControlsData.list.contains(where: { $0.title == redirectItem }) else { return nil }
        self.itemName = itemName
        self.redirectItem = redirectItem
    }
}

#Preview {
    NavigationStack {
        RedirectView(for: "Disclosure Groups", to: "Charts")
    }
}
