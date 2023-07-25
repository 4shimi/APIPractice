//
//  NewTweetView.swift
//  TwitterSwiftUI
//
//  Created by 정회승 on 2023/07/25.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            HStack{
               Button {
                   print("dismiss")
                   presentationMode.wrappedValue.dismiss()
            } label: {
                    Text("Cancel")
                    .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button {
                    print("upload")
             } label: {
                     Text("Tweet")
                     .bold()
                     .padding(.horizontal)
                     .padding(.vertical, 8)
                     .background(Color(.systemBlue))
                     .foregroundColor(Color(.white))
                     .clipShape(Capsule())
                 }
            }
            .padding()
            
            HStack(alignment: .top){
                Circle()
                    .frame(width: 64, height: 64)
                
                TextArea("What's happening?", text: $caption)
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
