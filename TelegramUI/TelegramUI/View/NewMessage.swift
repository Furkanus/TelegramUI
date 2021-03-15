//
//  NewMessageView.swift
//  TelegramUI
//
//  Created by Furkan Hanci on 3/14/21.
//

import SwiftUI

struct NewMessageView: View {
    @State private var textField : String = ""
  //  var contacts : Contact
    var body: some View {
        NavigationView {
        Form {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search", text: $textField)
            }
            
            Section(header: Text("New")) {
                List {
                    RowView(iconName: "person.2", text: "New Group", timeText: "").foregroundColor(.blue)
                    
                    RowView(iconName: "person.badge.plus", text: "New Contact", timeText: "")
                    
                    // I did not find new channel icon sorry 😢
                    RowView(iconName: "megaphone.fill", text: "New Channel", timeText: "")
                }
            }
            
            Section(header : Text("Contacts")) {
                List {
                    Group {
                    RowView(iconName: "person.fill", text: "Furkan", timeText: "")
                    RowView(iconName: "person.fill", text: "Jim", timeText: "")
                    RowView(iconName: "person.fill", text: "Joyce", timeText: "")
                    RowView(iconName: "person.fill", text: "Steve", timeText: "")
                    RowView(iconName: "person.fill", text: "Mike", timeText: "")
                    RowView(iconName: "person.fill", text: "Will", timeText: "")
                    RowView(iconName: "person.fill", text: "Dr.Brenner", timeText: "")
                    RowView(iconName: "person.fill", text: "Billy", timeText: "")
                    RowView(iconName: "person.fill", text: "Max", timeText: "")
                    RowView(iconName: "person.fill", text: "Dustin", timeText: "")
                   
                    }
                }
            }
           
        }.navigationBarTitle("New Message").foregroundColor(.white)
            
        }
       
    }
}

struct AddContactView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView().preferredColorScheme(.dark)
    }
}
