//
//  MenuRowView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct MenuRowView: View {
    let item:Int
    var body: some View {
        HStack(alignment: .top,spacing: 15,
                       content: {
            if let image = UIImage(named: "\(item)_sm"){
                Image(uiImage: image)
                    .padding(.trailing,-20 )
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.leading,-15)
                    
            }else{
                Image("surfboard_sm")
            }
            VStack (alignment: .leading)
            {
                Text("Margherita")
                RatingsView(rating: 4)
            }
        })
    }
}

#Preview {
    MenuRowView(item: 1)
}
