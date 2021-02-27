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
        
        NavigationView {
            ScrollView {
                ForEach(pizzaData.pizzas) { p in
                    NavigationLink(
                        destination: PizzaDetailView(pizza: p),
                        label: {
                            HStack {
                                Image(p.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding(.top, 25.0)
                                    //.padding(.left, 5.0)
                                    .frame(width: 124, height: 124)
                                    .cornerRadius(5)
                                    .clipped()
                        
                                VStack {
                                  Text(p.name)
                                    .fontWeight(.black)
                                   //.padding(15.0)
        
                             }
                            }
                            
                        })
  
              }
            }
            .navigationBarTitle("Pizza Menu")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
