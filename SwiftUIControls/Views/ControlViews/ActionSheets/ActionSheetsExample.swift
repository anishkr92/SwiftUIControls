//
//  ActionSheetsExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI

struct ActionSheetsExample: View {
    @State private var isActionSheetPresented = false
    @State private var isConfirmationDialogPresented = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Show old action sheet") {
                isActionSheetPresented = true
            }
            .actionSheet(isPresented: $isActionSheetPresented, content: {
                ActionSheet(
                    title: Text("Action Sheet Example"),
                    message: Text("This is an example of the action sheet control being presented."),
                    buttons: [
                        .default(Text("Dismiss"))
                    ]
                )
            })
            
            Button("Show action sheet using confirmation dialog") {
                isConfirmationDialogPresented = true
            }
            .confirmationDialog("Confirmation Dialog Example", isPresented: $isConfirmationDialogPresented, titleVisibility: .visible) {
                
            } message: {
                Text("This is an example of action sheet presented using confirmation dialog.")
            }
        }
    }
}

#Preview {
    ActionSheetsExample()
}
