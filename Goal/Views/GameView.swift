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
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(Color(hue: Double((100-Double(age))/255.0), saturation: 0.25, brightness: 0.75).gradient)
                .ignoresSafeArea()
            NavigationView {
                Form {
                    Group {
                        
                        HStack {
                            Image(uiImage: ["👶🏻","👶🏼","👶🏽","👶🏾","👶🏿"][name.color].textToImage(size: 60)!)
                                .padding(.trailing)
                            VStack(alignment: .leading) {
                                Text("\(name.firstName) \(name.surName)")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .fontWeight(.medium)
                                Text("Age \(age)")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    Section(header: Text("Health, Wealth & Happiness"), content: {
                        HStack {
                            Image(systemName: "heart.circle.fill")
                                .foregroundColor(.red)
                            Text("Health")
                        }
                        HStack {
                            Image(systemName: "dollarsign.circle.fill")
                                .foregroundColor(.green)
                            Text("Wealth")
                        }
                        HStack {
                            Image(systemName: "face.smiling.inverse")
                                .foregroundColor(.blue)
                            Text("Happiness")
                        }
                    })
                    Section(header: Text("Work"), content:{
                        HStack {
                            Image(systemName: "person.crop.square.filled.and.at.rectangle.fill")
                                .foregroundColor(.brown)
                            Text("Occupation")
                        }
                    })
                    Section(header: Text("Health, Wealth & Happiness"), content: {
                        HStack {
                            Image(systemName: "car.fill")
                                .foregroundColor(.purple)
                            Text("Assets")
                        }
                        HStack {
                            Image(systemName: "basketball.fill")
                                .foregroundColor(.orange)
                            Text("Activities")
                        }
                        HStack {
                            Image(systemName: "person.3.sequence.fill")
                                .foregroundColor(.cyan)
                            Text("Family and friends")
                        }
                    })
                }
                .navigationTitle("Game Of A Life")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
