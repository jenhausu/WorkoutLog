//
//  HomeView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/10/12.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack {
            ButtonView(title: "START!", subtitle: "開始運動") {
                startWorkout()
            }
            
            ButtonView(title: "MENU", subtitle: "規劃菜單") {
                plaining()
            }
            
            ButtonView(title: "EXERCISE", subtitle: "新增動作") {
                addWorkout()
            }
        }
    }
    
    func startWorkout() {
        
    }
    
    func plaining() {
        
    }
    
    func addWorkout() {
        
    }
}

private struct ButtonView: View {
    
    let title: String
    let subtitle: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                        .bold()
                        .offset(y: -5)
                    HStack {
                        Text(subtitle)
                            .font(.system(size: 16))
                            .fontWeight(.semibold)
                        if subtitle == "開始運動" {
                            Image(systemName: "play.fill")
                        }
                    }
                }
                .foregroundColor(Color(red: 67 / 255, green: 64 / 255, blue: 84 / 255))
                
                Image("imageName")
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(16)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .background(Color(red: 137/255, green: 135/255, blue: 149/255))
    }
}
