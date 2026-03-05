//
//  ButtonsExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI

struct ButtonsExample: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Default Button") { }
            
            Button { } label: {
                Label("Labelled Button", systemImage: "swift")
                    .foregroundStyle(.orange)
            }
            
            Button("Button with role", role: .destructive) { }
            
            Button { } label: {
                Label("Custom Button", systemImage: "swift")
            }
                .buttonStyle(CustomButtonStyle())
        }
    }
}

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .bold()
            .padding()
            .background(.orange)
            .foregroundStyle(.white)
            .clipShape(.capsule)
    }
}

#Preview {
    ButtonsExample()
}
