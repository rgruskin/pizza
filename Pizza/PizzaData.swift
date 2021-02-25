//
//  PizzaData.swift
//  Pizza
//
//  Created by Rich Gruskin on 2/15/21.
//

import Foundation

class Pizza :Identifiable, Decodable {
    var id:UUID??
    var name = ""
    var image = ""
    var toppings = [String]()
}
