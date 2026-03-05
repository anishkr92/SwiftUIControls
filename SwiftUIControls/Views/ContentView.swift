//
//  ContentView.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 04/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchTerm = ""
    
    var filteredList: [UIControlItem] {
        guard !searchTerm.isEmpty else { return UIControlsData.list }
        return UIControlsData.list.filter {
            $0.title.localizedCaseInsensitiveContains(searchTerm)
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredList, id: \.title) { item in
                    ControlListItem(item: item)
                }
            }
            .navigationTitle("UI Controls")
            .navigationBarTitleDisplayMode(.large)
            .navigationDestination(for: UIControlItem.self) { selectedControl in
                AnyView(selectedControl.view)
                    .navigationTitle(selectedControl.title)
                    .navigationBarTitleDisplayMode(.inline)
            }
            .searchable(text: $searchTerm, prompt: Text("Search UI Controls"))
        }
    }
}

#Preview {
    ContentView()
}
