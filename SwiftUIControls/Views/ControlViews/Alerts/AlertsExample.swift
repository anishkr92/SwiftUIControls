//
//  AlertsExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI

struct AlertsExample: View {
    @State private var isAlertWithTitleVisible = false
    @State private var isAlertForErrorVisible = false
    @State private var isAlertForDeleteVisible = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Alert with title") {
                isAlertWithTitleVisible = true
            }
            
            Button("Alert for Error") {
                isAlertForErrorVisible = true
            }
            
            Button("Delete alert with custom message") {
                isAlertForDeleteVisible = true
            }
        }
        .alert("This alert contains only a title.", isPresented: $isAlertWithTitleVisible) { }
        .alert(isPresented: $isAlertForErrorVisible, error: SCError.customError) { }
        .alert("Confirm delete?", isPresented: $isAlertForDeleteVisible) {
            Button("Cancel", role: .cancel) {
                isAlertForDeleteVisible = false
            }
            Button("Delete", role: .destructive) {
                isAlertForDeleteVisible = false
            }
        } message: {
            VStack(spacing: 20) {
                Text("Are you sure you want to delete the selected item?")
            }
        }

    }
}

enum SCError: LocalizedError {
    case customError
    
    public var errorDescription: String? {
        switch self {
        case .customError:
            return NSLocalizedString("A user-friendly description of the error.", comment: "My error")
        }
    }
}

#Preview {
    AlertsExample()
}
