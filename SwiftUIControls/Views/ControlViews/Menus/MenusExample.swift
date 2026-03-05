//
//  MenusExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI

struct MenusExample: View {
    
    @State private var selectedOption = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Menu("Menu") {
                Button("Action 1", systemImage: "swift") { }
                Button("Action 2", systemImage: "swift") { }
                Button("Action 3", systemImage: "swift") { }
            }
            .menuOrder(.fixed)
            .menuIndicator(.visible)
            .menuStyle(.automatic)
            
            Menu("Nested Menu") {
                Button("Action 1", systemImage: "swift") { }
                Menu("Sub Menu") {
                    Button("Nested Action 1", systemImage: "swift") { }
                    Button("Nested Action 2", systemImage: "swift") { }
                }
                Button("Action 3", systemImage: "swift") { }
                Button("Action 4", systemImage: "swift") { }
            }
            .menuOrder(.fixed)
            
            Menu("Menu with picker") {
                Button("Action 1", systemImage: "swift") { }
                Button("Action 2", systemImage: "swift") { }
                
                Section {
                    Button("Action 11") { }
                    Button("Action 12", systemImage: "swift") { }
                    Button("Action 13", systemImage: "swift") { }
                }
                
                Picker("Options", selection: $selectedOption) {
                    Text("Option 1").tag("Option1")
                    Label("Option 2", systemImage: "swift").tag("Option2")
                    Label("Option 3", systemImage: "swift").tag("Option3")
                }
            }
            
        }
    }
}

#Preview {
    MenusExample()
}
