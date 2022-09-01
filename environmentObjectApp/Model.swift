//
//  Model.swift
//  environmentObjectApp
//
//  Created by M. A. Alim Mukul on 01.09.22.
//

import Foundation

class Model: ObservableObject {
    
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showExperience = true
    
    var people = [
        Person(name: "Paul Hudson", address: "USA", company: "Hacking with Swift", experience: 12),
        Person(name: "Chris Chong", address: "Canada", company: "Code with Chris", experience: 10),
        Person(name: "Ray Wenderlich", address: "USA", company: "Raywenderlich.com", experience: 15),
        Person(name: "Yousuf Khan Ratul", address: "Hamburg, Germany", company: "Kuhne + Nagel", experience: 7),
        Person(name: "Jagot Jyoti Dey", address: "Frankfurt, Germany", company: "Check24", experience: 4)
    ]
}

struct Person: Identifiable {

    var id = UUID()
    var name:String
    var address:String
    var company:String
    var experience:Int
}
