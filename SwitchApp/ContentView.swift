//
//  ContentView.swift
//  SwitchApp
//
//  Created by Federico on 26/10/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isUppercase = false
    @State private var isReversed = false
    @State private var text = "Subscribe to Code Palace"
    
    func changeText(_ input: String) -> String {
        var newString = isUppercase ? input.uppercased() : input
        
        if isReversed {
            newString = String(newString.reversed())
        }
        
        return newString
    }
    
    var body: some View {
        VStack {
            Toggle("Make text Uppercase", isOn: $isUppercase)
            Toggle("Reverse text", isOn: $isReversed).toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Text("\(changeText(text))").padding().font(.system(size: 20, weight: .bold))
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
