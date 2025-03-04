//
//  Expanded.swift
//  ExpandedListView-SwiftUi
//
//  Created by Nimish Mothgare on 18/03/24.
//

import SwiftUI

struct Expanded: View {
    
    var que: QueandAns
    @State var isExpanded = false
    @State private var isShowingFirstImage = true

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(que.question!)
                    .foregroundStyle(isExpanded ? Color.blue : Color.black)
                Spacer()
                
                Image(isShowingFirstImage ? "icons8-double-up-24" : "icons8-expand-arrow-32")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            
            if isExpanded {
                Text(que.answer!)
            }
        }
        .foregroundStyle(.black)
        .frame(maxWidth: .infinity, alignment: .leading)
        .transition(.move(edge: .top))
        .padding(.horizontal, 5)
        .onTapGesture {
            withAnimation {
                isExpanded.toggle()
                self.isShowingFirstImage.toggle()
            }
        }
    }
}

#Preview {
    Expanded(que: QueandAns(question: "History of IOS App Developement", answer: "The history of iOS development dates back to 2007, when Apple introduced the first iPhone. The original iPhone ran on a version of iOS known as iPhone OS, which was later renamed to iOS. In 2008, Apple introduced the App Store, which allowed developers to create and distribute third-party apps for iOS devices."))
}
