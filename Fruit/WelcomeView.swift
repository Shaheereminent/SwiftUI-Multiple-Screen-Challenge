//
//  WelcomeView.swift
//  Fruit
//
//  Created by Shaheer Inayat Ali on 23/07/2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                WelcomeContentView()
                    .offset(y: -50)
                
                NavigationLink(destination: MainContentView(), label: {
                    Text("Continue")
                        .bold()
                        .frame(width: 300, height: 60)
                        .background(Color.init("ButtonColor"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.vertical)
                }) // : Navigation Link
                .padding(.vertical, 12)
                
                Spacer()
                
            } // :VStack Parent Below NavigationView
            
        } // :Navigation View
        
    }
}

struct WelcomeContentView: View {
    var body: some View {
        VStack(spacing: 15) {
            Image("lemonwelcome")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 350, alignment: .center)
            
            VStack(alignment: .center, spacing: 18) {
                Text("Fresh Fruits & \n Discount with Fruity")
                    .font(.system(size: 26, weight: .heavy, design: .rounded))
                    .multilineTextAlignment(.center)
                
                Text("get your delivery within an hour.\n We can leave it at your doorstep \n you can receive it")
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .lineSpacing(3)
            } // : VStack Fruit Text Detail
            
            Spacer()
            
        } // :VStack Container
    }
} // : Onboarding View

var fruitListView: [Fruit] = FruitList.listOfFruits

struct MainContentView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text("Fruits")
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                
                Spacer()
                
                Image(systemName: "circle.grid.2x2")
                    .font(.system(size: 24, weight: .regular))
            } // : Hstack Top Control Navigation
            .padding(.vertical)
            
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(fruitListView, id: \.id) { fruit in
                    HStack(alignment: .center, spacing: 14) {
                        HStack {
                            Image(fruit.imageName)
                                .renderingMode(.original)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60, alignment: .center)
                        } // : HStack Fruit Image Container
                        .padding()
                        .background(fruit.backGround)
                        .cornerRadius(12)
                        
                        VStack(alignment: .leading, spacing: 14) {
                            Text(fruit.title)
                                .font(.system(size: 20, weight: .semibold, design: .default))
                                .lineLimit(1)
                                .minimumScaleFactor(0.8)
                            
                            Text(fruit.description)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        } // :VStack Fruit Name & Description
                        
                        Spacer()
                        
                        HStack(alignment: .center, spacing: 10) {
                            Text(fruit.price)
                                .font(.system(size: 16, weight: .semibold, design: .default))
                            
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 14, weight: .semibold))
                            
                        } // : HStack Fruits Pricing
                        
                        
                    } // : HStack Ff Fruit Component
                    .padding(.vertical, 8)
                }
            }
        } // : VStack Main Content View
        .padding()
    }
} // : Main Content View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
