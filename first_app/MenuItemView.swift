//
//  MenuItemView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack{
            HStack {
                Text("Margherita")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .foregroundColor(Color(red: 0.38,green: 0.522,blue: 0.749))
                    .padding(.leading)
                if let image = UIImage(named: "0_lg"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top,.bottom],5)
                        .cornerRadius(15)
            
                }else{
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                }
            }
            .background(.linearGradient(colors: [Color("Surf"),Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .teal,radius: 5,x: 8,y: 8)

        }
        VStack (alignment: .leading) {
            ScrollView {
                Text(String(repeating: "Description", count: 20))
                    .font(.custom("Georgia",size: 18, relativeTo: .body))
            }
        }
        
    }
}

#Preview {
    MenuItemView()
}
