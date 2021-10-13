//
//  WorkoutView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/10/12.
//

import SwiftUI

struct WorkoutView: View {
    
    let data: [WorkoutData]
    
    @State var searchText: String = ""
    
    init(data: [WorkoutData]) {
        self.data = data
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        
        appearance.largeTitleTextAttributes = [
            .foregroundColor : UIColor.white
        ]
        appearance.titleTextAttributes = [
            .foregroundColor : UIColor.white
        ]
        appearance.backgroundColor = UIColor(red: 137/255, green: 135/255, blue: 149/255, alpha: 1)
        
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        
        UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(data) { workout in
                        WorkoutCell(muscleType: workout.muscleType,
                                    name: workout.name,
                                    sets: workout.count,
                                    weight: workout.weight,
                                    date: workout.date,
                                    favorite: workout.favorite)
                    }
                    .listRowBackground(Color(red: 137/255, green: 135/255, blue: 149/255))
                }
                .listStyle(.plain)
            }
            .navigationTitle("所有動作")
            .searchable(text: $searchText)
//            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: buttonAction) {
                        Image(systemName: "plus.square")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: buttonAction) {
                        Image(systemName: "list.bullet.rectangle.portrait")
                    }
                }
            }
        }
    }
    
    func buttonAction() {
        
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView(data: [WorkoutData(muscleType: .chase, name: "划船下拉", count: "10", weight: "36", date: "5", favorite: false),
                           WorkoutData(muscleType: .chase, name: "划船下拉", count: "10", weight: "36", date: "5", favorite: true)])
            .previewDevice("iPhone 13 Pro")
            
    }
}
