//
//  MainMenu.swift
//  Goal
//
//  Created by Brett Moxey on 6/8/2023.
//

import SwiftUI

class GameData: ObservableObject {
    @Published var name = "Some Name"
    @Published var isGame = false
    @Published var isGrave = false
}

struct MainMenu: View {
    @ObservedObject var gameData: GameData
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(Color.blue.gradient)
                .ignoresSafeArea()
            VStack {
                Spacer()
                VStack {
                    Text("Game of a life")
                        .font(.system(size:48, weight: .semibold))
                        .foregroundColor(.white)
                        
                    Text("by Brett Moxey")
                        .font(.system(size:24))
                        .foregroundColor(.white)
                }
                Spacer()
                Button {
                    print("do it")
                    gameData.isGame = true
                } label: {
                    HStack {
                        Text("🤰")
                            .font(.system(size:72))
                        Text("Create a new life")
                            .font(.system(size:32))
                            .foregroundColor(.black)
                            .frame(width:160)

                    }
                    .frame(width: 280, height:120)
                    .background(Color.green.gradient)
                    .cornerRadius(10.0)
                }
                Spacer()
                Button {
                    gameData.isGrave = true
                    print("Go to graves")
                } label: {
                    HStack {
                        Text("🪦")
                            .font(.system(size:72))
                        Text("Visit grave stones")
                            .font(.system(size:32))
                            .foregroundColor(.black)
                            .frame(width:160)
                    }
                    .frame(width: 280, height:120)
                    .background(Color.gray.gradient)
                    .cornerRadius(10.0)
                }
                Spacer()
                Image("bg")
                    .resizable()
                    .scaledToFit()
                    .frame(width:UIScreen.main.bounds.width, height: 150)
                Spacer()
            }
        }
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        @StateObject var gameData = GameData()
        MainMenu(gameData: gameData)
    }
}
