//
//  HomeView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/10/12.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ButtonView(title: "START!", subtitle: "開始運動") {
                startWorkout()
            }
            .padding(EdgeInsets(top: 7.5, leading: 10, bottom: 7.5, trailing: 10))

            ButtonView(title: "MENU", subtitle: "規劃菜單") {
                plaining()
            }
            .padding(EdgeInsets(top: 7.5, leading: 10, bottom: 7.5, trailing: 10))

            ButtonView(title: "EXERCISE", subtitle: "新增動作") {
                addWorkout()
            }
            .padding(EdgeInsets(top: 7.5, leading: 10, bottom: 7.5, trailing: 10))
        }
        .background(Color(red: 137/255, green: 135/255, blue: 149/255))
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
            .padding(20)
        }
        .buttonStyle(HomeButtonStyle())
        .cornerRadius(16)
    }
    
}

private struct HomeButtonStyle: ButtonStyle {
        
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(configuration.isPressed ? Color(red: 1, green: 98 / 255, blue: 136 / 255) : .white)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
