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
                LabeledContent("First Name") {
                    TextField("First Name", text: $viewModel.firstName)
                        .keyboardType(.namePhonePad)
                        .submitLabel(.next)
                        .focused($focusedField, equals: .firstName)
                        .themedFormTextStyle()
                }
                
                LabeledContent("Last Name") {
                    TextField("Last Name", text: $viewModel.lastName)
                        .keyboardType(.namePhonePad)
                        .submitLabel(.next)
                        .focused($focusedField, equals: .lastName)
                        .themedFormTextStyle()
                }
                
                LabeledContent("Phone Number") {
                    TextField("Phone Number", text: $viewModel.phoneNumber)
                        .keyboardType(.phonePad)
                        .focused($focusedField, equals: .phoneNumber)
                        .themedFormTextStyle()
                }
                
                DatePicker("Birth Date", selection: $viewModel.birthDate, in: viewModel.birthDateRange,
                           displayedComponents: .date)
                    .tint(.red)
            }
            
            Section("Actions") {
                Toggle("Send Newsletter", isOn: $viewModel.shouldSendNewsletter)
                Stepper(value: $viewModel.rating, in: 1...10) {
                    LabeledContent("Swift Rating") {
                        Text("\(viewModel.rating)")
                            .bold()
                            .foregroundStyle(.red)
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

fileprivate extension View {
    nonisolated func themedFormTextStyle() -> some View {
        self
            .multilineTextAlignment(.trailing)
            .foregroundStyle(.red)
    }
}
