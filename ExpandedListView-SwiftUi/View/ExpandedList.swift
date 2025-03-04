//
//  ExpandedList.swift
//  ExpandedListView-SwiftUi
//
//  Created by Nimish Mothgare on 18/03/24.
//

import SwiftUI

struct ExpandedList: View {
    
    @StateObject var viewModel = ViewModel()

    var body: some View {
        
        NavigationView {
                   List(viewModel.qusandans) { queandans in
                       Expanded(que: queandans)
                           .listRowBackground(
                               RoundedRectangle(cornerRadius: 10)
                                   .background(.clear)
                                   .foregroundColor(.white)
                                   .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                           )
                           .listRowSeparator(.hidden)
                   }
                   .scrollContentBackground(.hidden)
                   .background(Color(UIColor(hex: "#4b6b4e") ?? .clear).edgesIgnoringSafeArea(.all))
                   .listStyle(.inset)
                   .shadow(color: .black, radius: 2)
//                   .navigationTitle("Trending Facts")
                   .navigationBarItems(trailing:
                       Button(action: {
                           // Add your action here
                       }) {
                           Image(systemName: "plus")
                               .foregroundColor(.white)
                       }
                   )
            
            // Customize navigation title font and alignment
                        .navigationTitle("Trending Facts")
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                Text("Trending Facts")
                                    .font(.headline) // Customize font as needed
                                    .foregroundColor(.white)
                            }
                        }
               }
        
    }
}

#Preview {
    ExpandedList()
}
extension UIColor {
    convenience init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
