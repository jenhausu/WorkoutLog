//
//  AccumuliateExerciseView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/12/5.
//

import SwiftUI

struct AccumuliateExerciseView: View {
    
    @State private var exerciseDays: Int = 0
    
    var body: some View {
        VStack(spacing: 33) {
            Text("本月已累計運動天數")
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 238, green: 237, blue: 240))
            Text("\(exerciseDays)")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding()
    }
    
}

struct AccumuliateExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        AccumuliateExerciseView()
            .background(Color.gray)
    }
}
