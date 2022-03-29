//
//  ContentView.swift
//  SwiftUI DatePicker
//
//  Created by Samuel Blackburn on 29/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date()
    
    var body: some View {
        VStack {
            DatePicker(selection: $date, in: Date()..., displayedComponents: .date) { //...Date() will gray out future dates. Date()... will gray out past dates
                Text("Choose a date")
            }
            .frame(width: 200, height: 50, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
