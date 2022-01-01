//
//  HomeStatisticView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/12/5.
//

import SwiftUI

struct HomeStatisticView: View {
    
    var body: some View {
        VStack {
            AccumuliateExerciseView()
            HStack() {
                HomeStatisticItemView(title: "運動時數")
                Spacer()
                Divider()
                    .frame(height: 30)
                Spacer()
                HomeStatisticItemView(title: "運動組數")
                Spacer()
                Divider()
                    .frame(height: 30)
                Spacer()
                HomeStatisticItemView(title: "累計公斤數")
            }
            .padding()
        }
    }
    
}

struct HomeStatisticView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatisticView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
    }
}
