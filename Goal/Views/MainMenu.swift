//
//  MainMenu.swift
//  Goal
//
//  Created by Brett Moxey on 6/8/2023.
//

import SwiftUI

class GameData: ObservableObject {
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
                    Text("Game Of A Life")
                        .font(.system(size:40, weight: .semibold))
                        .foregroundColor(.white)
                        
                    Text("by Brett Moxey")
                        .font(.system(size:18))
                        .foregroundColor(.white)
                        .padding(.bottom, -24)
                    Image("Brett-Computer")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                }
                Spacer()
                Button {
                    gameData.isGame = true
                } label: {
                    HStack {
                        Image(uiImage: "🤰".textToImage(size: 80)!)
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
                } label: {
                    HStack {
                        Image(uiImage: "🪦".textToImage(size: 80)!)
                        Text("Visit grave yard")
                            .font(.system(size:32))
                            .foregroundColor(.black)
                            .frame(width:160)
                    }
                    .frame(width: 280, height:120)
                    .background(Color(hue: 0, saturation: 0, brightness: 0.75).gradient)
                    .cornerRadius(10.0)
                }
                Spacer()
                Image("bg")
                    .resizable()
                    .scaledToFit()
                    .frame(width:UIScreen.main.bounds.width, height: 150)
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
