//
//  ContentView.swift
//  Pizza
//
//  Created by Rich Gruskin on 2/15/21.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var pizzaData = PizzaModel()
    @State var myStrings:[String]?
    
    var body: some View {
         //Text("here again")
        
        ScrollView {
            ForEach(pizzaData.pizzas) { p in
                HStack(alignment: .center) {
                    Image(p.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .cornerRadius(5)
                        .clipped()
            
                    VStack {
                      Text(p.name)
                        .fontWeight(.black)
                       .padding(15.0)
        
    
                     HStack {
                        Text(p.toppings[0])
                        Text(p.toppings[1])
                        Text(p.toppings[2])
                     }
                 }

                }
          }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
