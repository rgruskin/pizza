//
//  PizzaDetailView.swift
//  Pizza
//
//  Created by Rich Gruskin on 2/24/21.
//

import SwiftUI

struct PizzaDetailView: View {
    
    var pizza:Pizza

    var body: some View {

        ScrollView {
            Image(pizza.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
            Text(pizza.name)
                .font(.title)

            ForEach (pizza.toppings, id:\.self){ item in
                Text("• " + item)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 1.0)
            }
        }
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = PizzaModel()
    
        PizzaDetailView(pizza: model.pizzas[0])
    }
}
