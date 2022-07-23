//
//  FruitStruct.swift
//  Fruit
//
//  Created by Shaheer Inayat Ali on 23/07/2022.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let price: String
    let backGround: Color
}

struct FruitList {
    
    static let listOfFruits = [
        Fruit(imageName: "apple",
              title: "Apple - HoneyCrisp",
              description: "3 pack, $ 1.28/kg",
              price: "$ 12.40",
             backGround: Color("AppleColor")),
        // Apple
        
        Fruit(imageName: "lemon",
              title: "Loose Lemon",
              description: "each, $ 0.28/each",
              price: "$ 9.10",
              backGround: Color("LemonColor")),
        // Lemon
        
        Fruit(imageName: "blueberries",
              title: "Blueberry - Berry",
              description: "each, $ 1.99/each",
              price: "$ 89.99",
              backGround: Color("BlueberryColor")),
        // Blueberry
        
        Fruit(imageName: "peaches",
              title: "Peaches - Stone",
              description: "each, $ 1.30/each",
              price: "$ 12.99",
              backGround: Color("peachesColor")),
        // Peaches
        
        Fruit(imageName: "strawberry",
              title: "Strawberry - accessory",
              description: "each, $ 0.46/each",
              price: "$ 19.99",
              backGround: Color("StrawberryColor")),
        // Strawberry
        
        Fruit(imageName: "oranges",
              title: "Orange - Citrus",
              description: "each, $ 0.24/each",
              price: "$ 7.99",
              backGround: Color("OrangeColor")),
    ]
}
