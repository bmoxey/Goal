//
//  ContentView.swift
//  Goal
//
//  Created by Brett Moxey on 3/8/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var gameData = GameData()
    var body: some View {
        
        if gameData.isGame {
            GameView()
        } else if gameData.isGrave {
            GraveView()
        } else {
            MainMenu(gameData: gameData)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
