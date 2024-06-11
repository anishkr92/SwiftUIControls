//
//  ShareLinksExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI

struct ShareLinksExample: View {
    let url = URL(string: "https://github.com/anishkr92")!
    
    var body: some View {
        VStack(spacing: 20) {
            ShareLink(item: url)
            
            ShareLink("Labelled Share Link", item: url)
            
            ShareLink(item: url) {
                Label("Share Link with Label builder", systemImage: "paperplane.fill")
            }
            
            ShareLink(
                "Share Link with message",
                item: url,
                message: Text("Additional message goes here.")
            )
            
            ShareLink(
                item: url,
                preview: SharePreview(
                    "Preview Title",
                    image: Image(systemName: "paperplane.fill")
                )
            ) {
                Label("Share Link with Preview", systemImage: "paperplane.fill")
            }
        }
    }
}

#Preview {
    ShareLinksExample()
}
