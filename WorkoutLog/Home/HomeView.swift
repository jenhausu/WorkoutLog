//
//  HomeView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/10/12.
//

import SwiftUI
import CustomModifer

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                HomeStatisticView()
                HomeButtonView()
            }
            .backgroundColor()
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
