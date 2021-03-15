//
//  RowView.swift
//  TelegramUI
//
//  Created by Furkan Hanci on 3/13/21.
//

import SwiftUI

struct RowView : View {
    var iconName: String
    var text: String
    var showDivider = true
    var timeText : String
    var body: some View {
        HStack() {
            Image(systemName: iconName)
                .shadow(color: .blue, radius: 20)
            VStack(alignment: .leading) {
                HStack {
                    Text(text)
                    Text(timeText).font(.system(size: 15.0)).fontWeight(.light)
                        .padding(.leading , 15)
                        Spacer()
                        
                }
               
                if showDivider {
                    Divider()
                } else {
                   Spacer()
                    .padding(.top)
                }
            }
        }
    }
}


