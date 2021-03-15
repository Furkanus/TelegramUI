//
//  ContentView.swift
//  TelegramUI
//
//  Created by Furkan Hanci on 3/13/21.
//

import SwiftUI

struct ContentView: View {
    @State private var textfield : String = ""
    var text : String = ""
    @State private var showNewMessage : Bool = false
    var body: some View {
        
        NavigationView {
            Form {
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search chats or users", text: $textfield)
                }
                
                
                Section(header: Text("Chats").font(.system(size: 15)).foregroundColor(.blue)) {
                    
                    VStack {
                        RowView(iconName: "person.fill", text: "Person", timeText: "18:06")
                        RowView(iconName: "person.fill", text: "Person", timeText: "18:06")
                        RowView(iconName: "person.fill", text: "Person", timeText: "18:06")
                        RowView(iconName: "person.fill", text: "Person", timeText: "18:06")
                        RowView(iconName: "person.fill", text: "Person", timeText: "18:06")
                        RowView(iconName: "person.fill", text: "Person", timeText: "18:06")
                        RowView(iconName: "person.fill", text: "Person", timeText: "18:06")
                        RowView(iconName: "person.fill", text: "Person", timeText: "18:06")
                        RowView(iconName: "person.fill", text: "Person", timeText: "18:06")
                    }
                    
                    
                    
                }
                
            }
            
            .navigationBarTitle("Chats" , displayMode: .automatic).foregroundColor(.white)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Edit") {
                        
                        print("edit pressed")
                    }
                    
                }
                
                ToolbarItem(placement : .navigationBarTrailing) {
                    
                    Button(action: {
                        self.showNewMessage.toggle()
                        print("add contacts")
                    }, label: {
                        Image(systemName: "square.and.pencil")
                    }).sheet(isPresented: $showNewMessage , content: {
                        NewMessageView()
                    })
                }
                
            }
            
        }
        
        .accentColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}


//struct TitleRepresent: UIViewRepresentable {
//    let title: String
//    let titleColor: UIColor
//
//    func makeUIView(context: Context) -> UILabel {
//        let label = UILabel()
//        label.tintColor = titleColor
//        label.text = title
//        return label
//    }
//
//    func updateUIView(_ uiView: UILabel, context: Context) {}
//
//    typealias UIViewType = UILabel
//}
