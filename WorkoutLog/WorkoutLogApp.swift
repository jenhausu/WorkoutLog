//
//  WorkoutLogApp.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/5/16.
//

import SwiftUI

@main
struct WorkoutLogApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
