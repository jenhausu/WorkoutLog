//
//  HomeRowView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/12/22.
//

import SwiftUI

struct HomeRowView<Content: View>: View {
    
    let title: String
    let subtitle: String
    let imageName: String
    @ViewBuilder let destination: () -> Content
    
    @State private var isActive: Bool = false
        
    var body: some View {
        Button {
            isActive = true
        } label: {
            ZStack {
                NavigationLink(isActive: $isActive) {
                    destination()
                } label: {
                    EmptyView()
                }
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
    
    @Environment(\.colorScheme) var colorScheme
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(configuration.isPressed ? Color(red: 1.0, green: 153.0 / 255.0, blue: 178.0 / 255.0) : Color(UIColor.systemBackground))
    }
    
    func makeBackgroundColor() -> Color {
        if colorScheme == .light {
            return .white
        } else {
            return Color.black.opacity(0.8)
        }
    }
    
}

struct HomeRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeRowView(title: "START!", subtitle: "開始運動", imageName: "home_1_icon") {
                EmptyView()
            }
            HomeRowView(title: "START!", subtitle: "開始運動", imageName: "home_1_icon") {
                EmptyView()
            }
            .preferredColorScheme(.dark)
            HomeRowView(title: "NEW EXERCISE", subtitle: "新增動作", imageName: "home_3_icon") {
                NewWorkoutView()
            }
        }
        .backgroundColor(.gray)
        .previewLayout(.sizeThatFits)
    }
}
