//
//  ActivityRingsExample.swift
//  SwiftUIControls
//
//  Created by Anish Kumar on 05/06/24.
//

import SwiftUI
import HealthKit

struct ActivityRingsExample: View {
    @State private var activitySummary = HKActivitySummary()
    
    var body: some View {
        VStack {
            ZStack {
                ActivityRings(activitySummary: $activitySummary)
                    .onAppear {
                        postLoadData()
                    }
            }
        }
        .padding()
    }
    
    func postLoadData() {
        // Move: active enery burned / goal
        // Quantity unit must be energy, ie. calorie
        activitySummary.activeEnergyBurned = HKQuantity(unit: .largeCalorie(), doubleValue: 30)
        activitySummary.activeEnergyBurnedGoal = HKQuantity(unit: .largeCalorie(), doubleValue: 100)
        
        // Exercise: exercise time / goal
        // Quantity unit must be time (hour, minute, or second)
        activitySummary.appleExerciseTime = HKQuantity(unit: .minute(), doubleValue: 20)
        activitySummary.appleExerciseTimeGoal = HKQuantity(unit: .minute(), doubleValue: 30)
        
        
        // Stand: hours time / goal
        // Quantity unit must be count
        activitySummary.appleStandHours = HKQuantity(unit: .count(), doubleValue: 1)
        activitySummary.appleStandHoursGoal = HKQuantity(unit: .count(), doubleValue: 4)
    }
}

#Preview {
    ActivityRingsExample()
}
