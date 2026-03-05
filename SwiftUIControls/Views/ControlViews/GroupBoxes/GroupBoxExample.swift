//
//  GroupBoxExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI

struct GroupBoxExample: View {
    var body: some View {
        VStack {
            GroupBox {
                VStack(spacing: 20) {
                    Label("Heading", systemImage: "swift")
                        .font(.title)
                    Text("This can be a large text or anything here. The group box can contain any custom view inside.")
                    GroupBox {
                        VStack(spacing: 12) {
                            Image(systemName: "figure.2")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .aspectRatio(contentMode: .fit)
                                .scaledToFit()
                            GroupBox {
                                Text("This is a nested group box")
                            }
                        }
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    GroupBoxExample()
}
