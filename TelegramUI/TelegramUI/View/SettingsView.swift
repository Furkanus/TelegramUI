//
//  SettingsView.swift
//  TelegramUI
//
//  Created by Furkan Hanci on 3/13/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Image(systemName: "person.fill")
                    .font(.system(size: 60))
                    .clipShape(Circle())
                    .padding(.bottom , 640)
                
                VStack {
                    Text("FurkanDev")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                    // Phone number
                    Text("12786324374365")
                }.padding(.bottom , 500)
                
                Form {
                    Section(header: Text("")) {
                        RowView(iconName: "pencil.circle.fill", text: "Set Nickname", timeText: "")
                        
                        
                    }
                    List {
                        Section(header: Text("")) {
                            RowView(iconName: "message.fill", text: "Stored Messages", timeText: "")
                            
                            RowView(iconName: "phone.fill", text: "Last Calls", timeText: "")
                            
                            RowView(iconName: "iphone", text: "Devices", timeText: "")
                            
                            RowView(iconName: "folder.fill", text: "Chat Folders", timeText: "")
                            
                        }
                        
                        Section(header: Text("")) {
                            RowView(iconName: "speaker.slash.fill", text: "Notifications And Sounds", timeText: "")
                            
                            RowView(iconName: "hand.raised.fill", text: "Security and Privacy", timeText: "")
                            
                            RowView(iconName: "opticaldiscdrive.fill", text: "Data and Storage", timeText: "")
                            
                            RowView(iconName: "lightbulb.fill", text: "Theme", timeText: "")
                            
                            RowView(iconName: "textformat.abc", text: "Language", timeText: "")
                            
                            RowView(iconName: "star.fill", text: "Stickers", timeText: "")
                            
                            
                        }
                        
                        
                        Section(footer: Text("")) {
                            RowView(iconName: "person.fill.questionmark", text: "Ask a Question", timeText: "")
                            
                            RowView(iconName: "questionmark.circle.fill", text: "Telegram FAQ", timeText: "")
                        }
                        
                    }
                    
                }
                
            }
            
            
            
            .navigationBarTitle(Text("Personal Settings") , displayMode: .inline)
            
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().preferredColorScheme(.dark)
    }
}
