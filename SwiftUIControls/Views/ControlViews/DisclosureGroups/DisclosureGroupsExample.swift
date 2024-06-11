//
//  DisclosureGroupsExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI

struct DisclosureGroupsExample: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Disclosure Groups is shown in Charts")
            NavigationLink("Go to Charts") {
                ChartsExample()
            }
        }
    }
}

#Preview {
    DisclosureGroupsExample()
}
