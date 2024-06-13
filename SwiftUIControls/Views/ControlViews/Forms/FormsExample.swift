//
//  FormsExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 13/06/24.
//

import SwiftUI

struct FormsExample: View {
    
    @State private var viewModel = FormsViewModel()
    @FocusState private var focusedField: FocusableField?
    
    var body: some View {
        Form {
            Section("Personal Information") {
                TextField("First Name", text: $viewModel.firstName)
                    .keyboardType(.namePhonePad)
                    .submitLabel(.next)
                    .focused($focusedField, equals: .firstName)
                
                TextField("Last Name", text: $viewModel.lastName)
                    .keyboardType(.namePhonePad)
                    .submitLabel(.next)
                    .focused($focusedField, equals: .lastName)
                
                TextField("Phone Number", text: $viewModel.phoneNumber)
                    .keyboardType(.phonePad)
                    .submitLabel(.done)
                    .focused($focusedField, equals: .phoneNumber)
                
                DatePicker("Birth Date", selection: $viewModel.birthDate, in: ClosedRange<Date>.init(uncheckedBounds: (lower: Date.distantPast, upper: Date())), displayedComponents: .date)
            }
            
            Section("Actions") {
                Toggle("Send Newsletter", isOn: $viewModel.shouldSendNewsletter)
                Stepper(value: $viewModel.rating, in: 1...10) {
                    HStack {
                        Text("Swift Rating")
                        
                        Spacer()
                        
                        Text("\(viewModel.rating)")
                            .bold()
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                    }
                }
                if let externalLink = viewModel.externalLink {
                    Link(destination: externalLink) {
                        Text("Apple Developer Website")
                    }
                }
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Dismiss Keyboard", systemImage: "keyboard.chevron.compact.down") {
                    focusedField = .none
                }
            }
        }
        .tint(.red)
        .scrollDismissesKeyboard(.immediately)
        .onSubmit {
            switch focusedField {
            case .firstName:
                focusedField = .lastName
            case .lastName:
                focusedField = .phoneNumber
            default:
                focusedField = .none
            }
        }
    }
}

#Preview {
    FormsExample()
}

enum FocusableField {
    case firstName, lastName, phoneNumber
}
