//
//  HomeStatisticItemView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/12/5.
//

import SwiftUI

struct HomeStatisticItemView: View {
    
    let title: String
    @State var number: Int = 0
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.system(size: 13))
                .foregroundColor(Color(red: 196, green: 196, blue: 196))
            Text("\(number)")
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding()
    }
}

struct HomeStatisticItemView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeStatisticItemView(title: "運動時數", number: 20)
            HomeStatisticItemView(title: "運動組數", number: 30)
            HomeStatisticItemView(title: "累計公斤數", number: 800)
        }
        .background(Color.gray)
    }
}
