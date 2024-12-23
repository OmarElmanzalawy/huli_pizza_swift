//
//  RatingsView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct RatingsView: View {
    var rating: Int
    var body: some View {
        HStack{
            ForEach(1...6,id: \.self){
                item in
                if(rating >= item){
                    Image(systemName: "fork.knife.circle.fill")
                }
                else{
                    Image(systemName: "circle")
                }
            }
            
        }
    }
}

#Preview {
    RatingsView(rating: 3)
}
