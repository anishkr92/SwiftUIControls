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
    private let extraText: String?
    
    private var controlItem: UIControlItem {
        UIControlsData.list.first { $0.title == redirectItem }!
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "arrowshape.turn.up.right")
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
            
            mainText
                .multilineTextAlignment(.center)
            
            NavigationLink("Go to \(redirectItem)") {
                AnyView(controlItem.view)
            }
        }
    }
    
    init?(for itemName: String, to redirectItem: String, withExtraText extraText: String? = nil) {
        guard UIControlsData.list.contains(where: { $0.title == redirectItem }) else { return nil }
        self.itemName = itemName
        self.redirectItem = redirectItem
        self.extraText = extraText
    }
    
    @ViewBuilder
    var mainText: some View {
        let commonText = Text(itemName).themedStyle()
        + Text(" are shown in ")
        + Text(redirectItem).themedStyle()
        
        if let extraText, !extraText.isEmpty {
            commonText + Text(LocalizedStringKey(extraText))
        } else {
            commonText
        }
    }
}

#Preview {
    NavigationStack {
        RedirectView(for: "Steppers", to: "Forms", withExtraText: "\nin **Swift Rating** field")
    }
    .padding()
}

fileprivate extension Text {
    nonisolated func themedStyle() -> Text {
        self
            .bold()
            .font(.title3)
            .foregroundStyle(.pink)
    }
}
