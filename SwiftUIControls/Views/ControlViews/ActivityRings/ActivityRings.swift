//
//  ActivityRings.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI
import UIKit
import HealthKitUI

struct ActivityRings: UIViewRepresentable {
    @Binding var activitySummary: HKActivitySummary
    
    func makeUIView(context: Context) -> HKActivityRingView {
        HKActivityRingView()
    }
    
    func updateUIView(_ uiView: HKActivityRingView, context: Context) {
        uiView.setActivitySummary(activitySummary, animated: true)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject {
        var parent: ActivityRings
        
        init(_ ringView: ActivityRings) {
            self.parent = ringView
        }
    }
}
