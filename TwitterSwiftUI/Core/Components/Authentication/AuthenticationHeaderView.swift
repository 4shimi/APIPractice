//
//  AuthenticationHeader.swift
//  TwitterSwiftUI
//
//  Created by 정회승 on 2023/07/25.
//

import SwiftUI

struct AuthenticationHeaderView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
            }
            
            Text("Hello.")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Welcom Back")
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading, 20)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))

    }
}

struct AuthenticationHeader_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationHeader()
    }
}
