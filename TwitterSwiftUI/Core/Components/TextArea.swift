//
//  TextArea.swift
//  TwitterSwiftUI
//
//  Created by 정회승 on 2023/07/25.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
        //이거 왜 안되는지 모르겠음 ㅠㅠ
//        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
                TextEditor(text: $text)
                    .padding(4)
            
            
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 12)
            }
            
           

        }
        .font(.body)
       
    }
}

//struct TextArea_Previews: PreviewProvider {
//    static var previews: some View {
//        TextArea(text: .constant("hi"))
//    }
//}
