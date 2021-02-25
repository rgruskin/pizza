//
//  PizzaModel.swift
//  Pizza
//
//  Created by Rich Gruskin on 2/15/21.
//
import Foundation

class PizzaModel : ObservableObject {
     @Published var pizzas = [Pizza]()
    
    init () {
        //pizzas.append(Pizza(name: "Bolgones", topping1: "Red Sauce", topping2: "Meat", topping3: "Cheese"))
        //pizzas.append(Pizza(name: "Hawaiian", topping1: "Red Sauce", topping2: "Cheese", topping3: "Pinapple"))
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        if let path = pathString {
            let url = URL(fileURLWithPath: path)
        
            do {
            
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
            
                do {
                   let pizzaData = try decoder.decode([Pizza].self, from: data)
                    
                    for p in pizzaData {
                        p.id = UUID()
                    }
                    
                    self.pizzas = pizzaData
                
                } catch {
                   print(error)
                }
            
            } catch {
                print(error)
            }
        }
    }
    
    func changeFirstToppng() {
        for index in 0...pizzas.count - 1 {
        pizzas[index].toppings[0] = "pinapple"
        }
        pizzas.shuffle()
    }
}
