//
//  PersonView.swift
//  environmentObjectApp
//
//  Created by M. A. Alim Mukul on 01.09.22.
//

import SwiftUI

struct PersonView: View {
    
    @EnvironmentObject var model: Model
    var person: Person
    
    var body: some View {
        
        VStack{
            
            
            if model.showName {
                Text(person.name)
            }
            if model.showAddress {
                Text(person.address)
            }
            
            if model.showCompany {
                Text(person.company)
            }
            
            if model.showExperience {
                Text(String(person.experience))
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        
        PersonView(person: Person(name: "Mukul", address: "Bremen, Germany", company: "University of Bremen", experience: 0))
            .environmentObject(Model())
    }
}
