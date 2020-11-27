//
//  ContentView.swift
//  demo-basics
//
//  Created by Paulo Orquillo on 26/11/20.
//

import SwiftUI

struct ContentView: View {
    @State var total = "20"
    @State var tipPercent: Double = 15.0
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .border(Color.black, width: 0.25)
            }
            .padding()
            HStack {
                // in accepts a range in ... notation
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent)) %")
            }
            .padding()
            //unwrap optionals
            if let totalNum = Double(total) {
                //specifier is used for formatting
                Text("Tip Amount: $\(totalNum * tipPercent / 100, specifier: "%0.2f")")
            } else {
                Text("Please enter a valid value")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
