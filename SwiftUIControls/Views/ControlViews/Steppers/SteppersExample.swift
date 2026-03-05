//
//  SteppersExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 13/06/24.
//

import SwiftUI

struct SteppersExample: View {
    
    var body: some View {
        RedirectView(for: "Steppers", to: "Forms", withExtraText: "\n using **Swift Rating** field")
            .padding()
    }
}

#Preview {
    NavigationStack {
        SteppersExample()
    }
}
