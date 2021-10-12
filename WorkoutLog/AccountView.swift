//
//  AccountView.swift
//  WorkoutLog
//
//  Created by 蘇健豪 on 2021/10/12.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        List {
            Cell(title: "基本資料")
            Cell(title: "我的菜單")
        }
    }
}

private struct Cell: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: "person")
            Text(title)
        }
    }
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
