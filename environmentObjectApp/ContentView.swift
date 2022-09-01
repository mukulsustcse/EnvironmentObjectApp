//
//  ContentView.swift
//  environmentObjectApp
//
//  Created by M. A. Alim Mukul on 01.09.22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        
        TabView {
            
            VStack {
                
                List(model.people)  { person in
                    
                    HStack {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 40, height: 40)
                        PersonView(person: person)
                    }
                }
                
            }
            .padding()
            .tabItem {
                Image(systemName: "person.2")
            }
            
            VStack {
                Toggle("Show Name :", isOn: $model.showName)
                    .toggleStyle(SwitchToggleStyle(tint: Color.red))
                Toggle("Show Address :", isOn: $model.showAddress)
                    .toggleStyle(SwitchToggleStyle(tint: Color.green))
                Toggle("Show Company :", isOn: $model.showCompany)
                    .toggleStyle(SwitchToggleStyle(tint: Color.blue))
                Toggle("Show Years of Experiece :", isOn: $model.showExperience)
                    .toggleStyle(SwitchToggleStyle(tint: Color.black))
            }
            .padding()
            .tabItem {
                Image(systemName: "gearshape")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
