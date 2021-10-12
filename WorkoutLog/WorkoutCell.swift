//
//  WorkoutCell.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/9/17.
//

import SwiftUI

struct WorkoutCell: View {
        
    var name: String
    var setCount: String
    var weight: String
    var date: String
    
    @State var favorite: Bool?
        
    var body: some View {
        HStack {
            Image("")
                .resizable()
                .frame(width: 54, height: 54)
                .cornerRadius(27)
                .padding(10)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2)
                    .padding(.bottom, 10)
                HStack {
                    Text("\(setCount)組｜\(weight)公斤")
                        .padding(.trailing, 20)
                    Text("\(date)天")
                        .foregroundColor(Color(red: 249/255, green: 218/255, blue: 49/255))
                }
                .font(.body)
            }
            Spacer()
            Button(action: favoriteButtonClick) {
                if favorite == false {
                    Image(systemName: "heart")
                } else if favorite == true {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                }
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(Color(red: 137/255, green: 135/255, blue: 149/255))
    }
    
    func favoriteButtonClick() {
        favorite?.toggle()
    }
}

struct WorkoutCell_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WorkoutCell(name: "Goblet walk", setCount: "12", weight: "30", date: "5")
            WorkoutCell(name: "划船", setCount: "12", weight: "30", date: "5", favorite: false)
            WorkoutCell(name: "划船", setCount: "12", weight: "30", date: "5", favorite: true)
        }
        .previewLayout(.fixed(width: 375, height: 83))
    }
}
