//
//  GameView.swift
//  Goal
//
//  Created by Brett Moxey on 6/8/2023.
//

import SwiftUI

struct GameView: View {
    var age = 0
    var name = getName()
    var pic = "👶🏻👶🏼👶🏽👶🏾👶🏿"
    
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(Color(hue: Double((100-Double(age))/255.0), saturation: 0.25, brightness: 0.75).gradient)
                .ignoresSafeArea()
            VStack {
            
                HStack {
                    Image(uiImage: "👶🏻".textToImage(size: 60)!)
                        .padding(.all)
                    Text("\(name.firstName) \(name.surName)")
                        .font(.title2)
                        .foregroundColor(.black)
                        .fontWeight(.medium)
                    Spacer()
                    Button {
                        print("hello")
                    } label: {
                        Text("Age \(age) >")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.trailing)
                    }
                }
                Spacer()
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
