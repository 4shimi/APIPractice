//
//  ProfileView.swift
//  TwitterSwiftUI
//
//  Created by 정회승 on 2023/07/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            headerView
            
            actionButtons
            
            VStack(alignment: .leading, spacing: 4){
                HStack {
                    Text("Heath Ledger")
                        .font(.title2)
                        .bold()
                    
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Text("@Joker")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            
                Text("Your moms favorite villain")
                    .font(.subheadline)
                    .padding(.vertical)
                
                HStack(spacing: 24){
                    HStack{
                        Image(systemName: "mappin.and.ellipse")
                        
                        Text("Gothan, NY")
                    }
                    
                    HStack{
                        Image(systemName: "link")
                        
                        Text("www.thejoker.com")
                    }
                    
                }
                .font(.caption)
                .foregroundColor(.gray)
                
                HStack(spacing: 24){
                    HStack(spacing: 4){
                        Text("807")
                            .font(.subheadline)
                            .bold()
                        Text("Following")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    HStack(spacing: 4){
                        Text("69M")
                            .font(.subheadline)
                            .bold()
                        Text("Followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                }
                .padding(.vertical)
                
            }
            .padding(.horizontal)
            
                        
            Spacer()
            
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


extension ProfileView {
    
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                Button{
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(y: 12)
                }
                
                Circle()
                    .frame(width: 72, height: 72)
                    .padding(.leading, 20)
                .offset(y: 30)
            }
        }
        .frame(height: 120)
    }
    
    var actionButtons: some View {
        HStack(spacing: 12){
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle()
                    .stroke(.gray, lineWidth: 0.75))
            
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(.gray, lineWidth: 0.75))
            }
            
        }
        .padding(.trailing)

    }
}
