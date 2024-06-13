//
//  LinksExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 13/06/24.
//

import SwiftUI

struct LinksExample: View {
    var body: some View {
        RedirectView(for: "Links", to: "Forms", withExtraText: "\n using **Apple Developer Website** field")?
            .padding()
    }
}

#Preview {
    NavigationStack {
        LinksExample()
    }
}
