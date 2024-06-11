//
//  ColorPickersExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI

struct ColorPickersExample: View {
    @State private var selectedColor: Color = .red
    
    var body: some View {
        VStack(spacing: 20) {
            ColorPicker("Select color", selection: $selectedColor)
            
            Rectangle()
                .fill(selectedColor)
                .frame(height: 100)
        }
        .padding()
    }
}

#Preview {
    ColorPickersExample()
}
