//
//  ContentView.swift
//  SC_personal_app
//
//  Created by Scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var fun = "Click below for a . . ."
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .ignoresSafeArea()
            VStack {
                Image(systemName: "star.fill")
                    .imageScale(.large)
                    .foregroundColor(.yellow)
                    .padding()
                Text("H O W R U ?")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .fontWeight(.black)
                    .shadow(radius:15)
                    .fontDesign(.serif)
                Spacer()
                Text("I'm Sophie Cheng!")
                    .font(.title2)
                    .foregroundColor(Color.white)
                Spacer()
                VStack(alignment: .leading) {
                    Text("I'm a rising senior from NYC, and I've been a long lover of languages!")
                        .padding(10)
                    Text("I also enjoy doodling, fiddling, thinking philoSophiecally, and consuming music.")
                        .padding(10)
                    
                }
                .background(Rectangle().foregroundColor(.white))
                .cornerRadius(10)
                .shadow(radius: 10)
                .padding()
                    Text(" - G A L L E R Y - ")
                        .font(.title)
                        .foregroundColor(Color.yellow)
                        .fontWeight(.bold)
                        .shadow(radius:15)
                        .fontDesign(.serif)
                    Image("20s")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                Text(fun)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(10)
                Button(" - F U N F A C T - "){
                    print("Fun fact unleashed!")
                    let funFact = ["I have Irish family!", "I can do a mean Barbie dog dance.", "I was born and raised in Bronx~", "I have stayed the night in prison."]
                    let randint = Int.random(in: 0..<4)
                    fun = funFact[randint]
            
                }
                .shadow(radius:15)
                .font(.title)
                .foregroundColor(Color.yellow)
                .fontWeight(.black)
                .fontDesign(.serif)
            }
            .padding(10)
        }
        .background(Rectangle().foregroundColor(.white))
        .cornerRadius(10)
        .shadow(radius: 10)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
