//
//  Contact.swift
//  TelegramUI
//
//  Created by Furkan Hanci on 3/14/21.
//

import Foundation

struct Contact : Identifiable{
    var id = UUID()
    let name : String
    let surname : String
    var lastSeen : String
}

// Contacts dummy data

let Furkan = Contact(name: "Furkan", surname: "Hanci", lastSeen: "Recently")
let Michael = Contact(name: "Mike", surname: "Wheeler", lastSeen: "Recently")
let Steve = Contact(name: "Steve", surname: "Harrington", lastSeen: "Recently")
let Jim = Contact(name: "Jim", surname: "Hopper", lastSeen: "In the Russia 🇷🇺")
let Eleven = Contact(name: "Eleven", surname: "Hopper", lastSeen: "In the upsidedown")

let contactArray = [Furkan , Michael , Steve , Jim , Eleven]

