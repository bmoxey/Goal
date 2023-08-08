//
//  GameView.swift
//  Goal
//
//  Created by Brett Moxey on 6/8/2023.
//

import SwiftUI

struct GameView: View {
    @State var age = 0
    var name = getName()
    @State var face = ["👶🏻","👶🏼","👶🏽","👶🏾","👶🏿"]
    var body: some View {
        ZStack {
            NavigationView {
                Form {
                    Group {
                        HStack {
                            Image(uiImage: face[name.color].textToImage(size: 60)!)
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

                    Section(header: Text("Work"), content:{
                        HStack {
                            Image(systemName: "person.crop.square.filled.and.at.rectangle.fill")
                                .foregroundColor(.cyan)
                                .frame(width: 24)
                            Text("Occupation")
                        }
                    })

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

                    Section {
                        Button {
                            age += 1
                            if age > 5 {
                                if name.isMale {
                                    face = ["👦🏻","👦🏼","👦🏽","👦🏾","👦🏿"]
                                } else {
                                    face = ["👧🏻","👧🏼","👧🏽","👧🏾","👧🏿"]
                                }
                            }
                            if age > 11 {
                                face = ["🧑🏻","🧑🏼","🧑🏽","🧑🏾","🧑🏿"]
                            }
                            if age > 17 {
                                if name.isMale {
                                    face = ["👨🏻","👨🏼","👨🏽","👨🏾","👨🏿"]
                                } else {
                                    face = ["👩🏻","👩🏼","👩🏽","👩🏾","👩🏿"]
                                }
                            }
                            if age > 39 {
                                if name.isMale {
                                    face = ["🧔🏻‍♂️","🧔🏼‍♂️","🧔🏽‍♂️","🧔🏾‍♂️","🧔🏿‍♂️"]
                                } else {
                                    face = ["👩🏻‍🦱","👩🏼‍🦱","👩🏽‍🦱","👩🏾‍🦱","👩🏿‍🦱"]
                                }
                            }
                            if age > 64 {
                                if name.isMale {
                                    face = ["👴🏻","👴🏼","👴🏽","👴🏾","👴🏿"]
                                } else {
                                    face = ["👵🏻","👵🏼","👵🏽","👵🏾","👵🏿"]
                                }
                            }

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

