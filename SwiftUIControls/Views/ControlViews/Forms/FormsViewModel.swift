//
//  FormsViewModel.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 13/06/24.
//

import Foundation

@Observable
final class FormsViewModel {
    var firstName = ""
    var lastName = ""
    var phoneNumber = ""
    var birthDate = Date()
    var shouldSendNewsletter = false
    var rating = 7
    var externalLink: URL?
    
    let birthDateRange = Date.distantPast...Date()
    
    init(firstName: String = "", lastName: String = "", phoneNumber: String = "", birthDate: Date = Date(), shouldSendNewsletter: Bool = false, rating: Int = 7, externalLink: String = "https://developer.apple.com/") {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.birthDate = birthDate
        self.shouldSendNewsletter = shouldSendNewsletter
        self.rating = rating
        self.externalLink = URL(string: externalLink) ?? nil
    }
}
