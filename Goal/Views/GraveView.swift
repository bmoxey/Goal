//
//  GraveView.swift
//  Goal
//
//  Created by Brett Moxey on 6/8/2023.
//

import SwiftUI

struct GraveView: View {
    @ObservedObject var gameData: GameData
    var body: some View {
        VStack {
            ZStack {
                Text("Grave Yard")
                    .font(.title)
                    .fontWeight(.semibold)
                HStack {
                    Button {
                        gameData.isGrave = false
                        print("do it")
                    } label: {
                        Text("〈 Menu")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                    .padding(.leading)
                    Spacer()
                }
            }
            Spacer()
        }

    }
}

struct GraveView_Previews: PreviewProvider {
    static var previews: some View {
        @StateObject var gameData = GameData()
        GraveView(gameData: gameData)
    }
}
