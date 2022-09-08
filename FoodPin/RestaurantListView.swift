//
//  ContentView.swift
//  FoodPin
//
//  Created by Huang on 2022/9/6.
//

import SwiftUI

struct RestaurantListView: View {
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle &Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "RoyalOak", "CASK Pub and Kitchen"]
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petiteoyster", "forkee", "posatelier", "bourkestreetbakery", "haigh", "palomino", "upstate",
    "traif", "graham", "waffleandwolf", "fiveleaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "cask"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "NewYork", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood"
    , "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    var body: some View {
        List {
            ForEach(restaurantNames.indices, id: \.self){ index in
                VStack(alignment:.leading){
                    Image(restaurantImages[index])
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 200)
//                        .cornerRadius(20)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    VStack(alignment:.leading){
                        Text(restaurantNames[index])
                            .font(.system(.title2, design: .rounded))
                        Text(restaurantTypes[index])
                            .font(.system(.body, design: .rounded))
                        Text(restaurantLocations[index])
                            .font(.system(.subheadline, design: .rounded))
                            .foregroundColor(.gray)
                    }
                    .padding(.leading, 20)
                    
                }
                .padding(.bottom, 15.0)
                
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}


struct RestaurantListView_Previews: PreviewProvider {
    static var previews: some View {
        
        RestaurantListView()
            .previewInterfaceOrientation(.portraitUpsideDown)
//            .preferredColorScheme(.dark)
    }
}
