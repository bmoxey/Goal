//
//  GraveView.swift
//  Goal
//
//  Created by Brett Moxey on 6/8/2023.
//

import SwiftUI

struct GraveView: View {
    @ObservedObject var gameData: GameData
    @State private var searchString: String = ""
    enum SortOptions: String, CaseIterable, Identifiable {
        case totalHappiness, totalWealth, maxWealth
        var id: Self { self }
    }
    @State private var selectedSort: SortOptions = .totalHappiness
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(Color(hue: 0, saturation: 0, brightness: 0.75).gradient)
                .ignoresSafeArea()
            VStack {
                Text("Grave Yard")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                Spacer()
            }
            
            VStack {
                HStack {
                    Button {
                        gameData.isGrave = false
                    } label: {
                        Text("< Menu")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.vertical, 4)
                    }
                    .padding(.leading)
                    Spacer()
                }
                TextField(" 🔎 Search", text: $searchString)
                    .font(.title)
                    .foregroundColor(.black)
                    .background(.white)
                    .padding(.horizontal)

                List {
                    Picker("Sorted by", selection: $selectedSort) {
                        Text("Total Happiness").tag(SortOptions.totalHappiness)
                        Text("Total Wealth").tag(SortOptions.totalWealth)
                        Text("Max Wealth").tag(SortOptions.maxWealth)
                    }
                    .listRowBackground(Color.clear)

                    ForEach(0 ... 20, id: \.self) { index in
                        HStack {
                            Image(uiImage: "🪦".textToImage(size: 40)!)
                            Text("Brett Moxey")
                                .font(.title2)
                            Spacer()
                            Text("234,234")
                                .font(.title2)

                        }
                        .listRowBackground(Color.clear)
                    }
                }
                .scrollContentBackground(.hidden)
                .listStyle(.plain)
                Spacer()
                
            }
            
        }
        
        
    }
}

struct GraveView_Previews: PreviewProvider {
    static var previews: some View {
        @StateObject var gameData = GameData()
        GraveView(gameData: gameData)
    }
}
