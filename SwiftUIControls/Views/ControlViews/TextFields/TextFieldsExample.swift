//
//  TextFieldsExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 13/06/24.
//

import SwiftUI

struct TextFieldsExample: View {
    
    @State private var fixedVerticalText = ""
    @State private var horizontalText = ""
    @State private var growingVerticalText = ""
    
    let lineLimit = 3
    
    var body: some View {
            VStack(alignment: .center, spacing: 40) {
                VStack(alignment: .leading) {
                    Text("Fixed Vertical Text Field")
                    TextField("Text here will automatically fill upto \(lineLimit) lines and then start scrolling vertically.", text: $fixedVerticalText, axis: .vertical)
                        .padding(20)
                        .lineLimit(lineLimit, reservesSpace: true)
                        .border(.red)
                }
                
                VStack(alignment: .leading) {
                    Text("Horizontal Text Field")
                    TextField("Enter single-line text here.", text: $horizontalText, axis: .horizontal)
                        .padding(20)
                        .border(.red)
                }
                
                VStack(alignment: .leading) {
                    Text("Growing Vertical Text Field")
                    TextField("Enter multiline text here and see it grow.", text: $growingVerticalText, axis: .vertical)
                        .padding(20)
                        .border(.red)
                }
            }
        .padding()
    }
}

#Preview {
    TextFieldsExample()
}
