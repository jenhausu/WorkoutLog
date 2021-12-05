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
                HomeRow(title: "START!", subtitle: "開始運動", imageName: "home_1_icon") {
                    
                }
                HomeRow(title: "MENU", subtitle: "規劃菜單", imageName: "home_2_icon") {
                    
                }
                HomeRow(title: "NEW EXERCISE", subtitle: "新增動作", imageName: "home_3_icon") {
                    
                }
            }
            .padding()
        }
    }
    
    
    func startWorkout() {
        
    }
    
    func plaining() {
        
    }
    
    func addWorkout() {
        
    }
}


private struct HomeRow: View {
    let title: String
    let subtitle: String
    let imageName: String
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                HStack {
                    Spacer()
                    Image(imageName)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(title)
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.bold)
                            .offset(y: -5)
                            .background(Color.white)
                        HStack {
                            Text(subtitle)
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                            if subtitle == "開始運動" {
                                Image(systemName: "play.fill")
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
        .frame(height: 110)
        .buttonStyle(HomeButtonStyle())
        .cornerRadius(16)
    }
}

private struct HomeButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(configuration.isPressed ? Color(red: 1, green: 153 / 255, blue: 178 / 255) : .white)
    }
}

struct HomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeButtonView()
            HomeButtonView()
                .previewDevice("iPhone 13 mini")
                .previewDisplayName("iPhone 13 mini")
            HomeButtonView()
                .previewDevice("iPhone 13 Pro Max")
                .previewDisplayName("iPhone 13 Pro Max")
        }
        .background(Color.gray)

    }
}
