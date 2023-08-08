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
            NavigationView {
                Form {
                    Group {
                        
                        HStack {
                            Image(uiImage: ["👶🏻","👶🏼","👶🏽","👶🏾","👶🏿"][name.color].textToImage(size: 60)!)
                                .padding(.trailing)
                            VStack(alignment: .leading) {
                                Text("\(name.firstName) \(name.surName)")
                                    .font(.title2)
                                    .fontWeight(.medium)
                                Text("Age \(age)")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))

                    Section(header: Text("Wellness"), content: {
                        HStack {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                                .frame(width: 24)
                            Text("Health")
                        }
                        HStack {
                            Image(systemName: "dollarsign")
                                .foregroundColor(.green)
                                .frame(width: 24)
                            Text("Wealth")
                        }
                        HStack {
                            Image(systemName: "face.smiling")
                                .foregroundColor(.blue)
                                .frame(width: 24)
                            Text("Happiness")
                        }
                    })
                    .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: -20, trailing: 5))
                    Section(header: Text("Work"), content:{
                        HStack {
                            Image(systemName: "person.crop.square.filled.and.at.rectangle.fill")
                                .foregroundColor(.cyan)
                                .frame(width: 24)
                            Text("Occupation")
                        }
                    })
                    .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: -20, trailing: 5))
                    Section(header: Text("Resources"), content: {
                        HStack {
                            Image(systemName: "car.fill")
                                .foregroundColor(.purple)
                                .frame(width: 24)
                            Text("Assets")
                        }
                        HStack {
                            Image(systemName: "basketball.fill")
                                .foregroundColor(.orange)
                                .frame(width: 24)
                            Text("Activities")
                        }
                        HStack {
                            Image(systemName: "figure.2.arms.open")
                                .foregroundColor(.pink)
                                .frame(width: 24)
                            Text("Family and friends")
                        }
                    })
                    .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: -20, trailing: 5))
                    Section {
                        Button {
                            print("aa")
                        } label: {
                            HStack {
                                Text("Next Year ")
                                Image(systemName: "forward.end")
                            }
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.blue.gradient)
                            .foregroundColor(.white)
                            .font(.system(size:20, weight: .bold))
                            .cornerRadius(25.0)
                        }

                    }
                    .listRowBackground(Color.clear)
                    
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

