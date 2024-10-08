//
//  SearchBar.swift
//  airbnbclone
//
//  Created by Arjun K on 9/19/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var location: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            // Preview text
            VStack (alignment: .leading){
                Text(location == "" ? "Where To?" : location)
                    .bold()
                    .font(.system(size: 13))
                Text("Anywhere - Any Week - Add Guests")
                    .font(.system(size: 10))
                    .foregroundStyle(.gray)
            }
            Spacer()
                .frame(width: 50)
            
            // Filter Button
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .resizable()
                    .foregroundStyle(.black)
                    .frame(width: 17, height: 17)
                    .padding(2)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
        // Actual bar component
        .overlay {
            Capsule(style: .continuous)
                .stroke(.gray, lineWidth: 1)
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}

#Preview {
    SearchBar(location: .constant("Los Angeles"))   
}
