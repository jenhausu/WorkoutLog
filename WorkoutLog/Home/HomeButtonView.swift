//
//  HomeButtonView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/12/5.
//

import SwiftUI

struct HomeButtonView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                HomeRowView(title: "START!", subtitle: "開始運動", imageName: "home_1_icon") {
                    StartWorkoutView()
                }
                HomeRowView(title: "MENU", subtitle: "規劃菜單", imageName: "home_2_icon") {
                    WorkoutView()
                }
                HomeRowView(title: "NEW EXERCISE", subtitle: "新增動作", imageName: "home_3_icon") {
                    NewWorkoutView()
                }
            }
            .padding()
        }
    }
    
}

struct HomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButtonView()
        .background(Color.gray)
    }
}
