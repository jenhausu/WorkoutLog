//
//  ContentView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/5/16.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("", systemImage: "house.fill")
                }
            WorkoutView(data: [])
                .tabItem {
                    Label("", image: "workout_tabicon")
                        .tint(Color(red: 1, green: 98 / 255, blue: 136 / 255))
                }
            AccountView()
                .tabItem {
                    Label("", systemImage: "person.fill")
                }
        }
        .accentColor(Color(red: 1, green: 98 / 255, blue: 136 / 255))
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
