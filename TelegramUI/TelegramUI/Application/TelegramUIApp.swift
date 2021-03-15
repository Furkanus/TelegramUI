//
//  TelegramUIApp.swift
//  TelegramUI
//
//  Created by Furkan Hanci on 3/13/21.
//

import SwiftUI

@main
struct TelegramUIApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                
                ContactsView()
                    .tabItem {
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                            Text("Contacts")
                        }
                    }
                
                ContentView()
                    .tabItem {
                        HStack {
                            Image(systemName: "message.fill")
                            Text("Chats")
                        }
                    }
                
                SettingsView()
                    .tabItem {
                        HStack {
                            Image(systemName: "gear")
                            Text("Settings")
                        }
                    }
               
            }
           
        }
    }
}
