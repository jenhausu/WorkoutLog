//
//  BackgroundModifier.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/12/22.
//

import Foundation
import SwiftUI

struct BackgroundModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .background(LinearGradient(colors: [Color(red: 203, green: 166, blue: 175),
                                                Color(red: 119, green: 115, blue: 144),
                                                Color(red: 67 , green: 64, blue: 84)],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing))
    }
    
}

extension View {
    func backgroundColor() -> some View {
        modifier(BackgroundModifier())
    }
}
