//
//  MenuView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView{
            ForEach(1...25,id: \.self){
                item in MenuRowView(item: item)
                
            }
        }
    }
}

#Preview {
    MenuView()
}


