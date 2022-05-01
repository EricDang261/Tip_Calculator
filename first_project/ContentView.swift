//
//  ContentView.swift
//  first_project
//
//  Created by Đặng Thịnh on 4/30/22.
//

import SwiftUI

struct ContentView: View {
    // binding value in swift
    @State var total = "100"
    @State var tip_percent = 15.0
    var body: some View {
        VStack{
            Text("Tip Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            HStack {
                Text("$")
                TextField("Amount", text:$total)
               // Text("\(total)") // \() to read the input from the text field
            }
            .padding(.all)
            HStack{
                Slider(value: $tip_percent, in: 1...30 , step: 1.0)
                Text("\(Int(tip_percent))%") // text holder and cast the value into integer
            }
            .padding()
            if let totalNum = Double(total){
                Text("Tip amount: $\(totalNum * tip_percent / 100.0, specifier: "%0.2f")")
            }
            else{
                Text("Please enter a numeric value")
            }
        
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
