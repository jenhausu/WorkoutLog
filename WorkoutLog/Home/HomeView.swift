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
        VStack {
            HomeStatisticView()
            HomeButtonView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .backgroundColor(.gray)
    }
}
