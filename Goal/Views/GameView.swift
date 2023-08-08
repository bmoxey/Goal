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
        NavigationStack {
            List {
                NavigationLink {
                    List {
                        VStack {
                            Text("\(name.firstName) \(name.surName)")
                                .font(.largeTitle)
                            ZStack {
                                if name.isMale {
                                    Circle()
                                        .fill(Color.blue.gradient)
                                        .frame(width: 240, height: 240)
                                        .modifier(CenterModifier())
                                } else {
                                    Circle()
                                        .fill(Color.pink.gradient)
                                        .frame(width: 240, height: 240)
                                        .modifier(CenterModifier())

                                }
                                Image(uiImage: face[name.color].textToImage(size: 200)!)
                                    .modifier(CenterModifier())
                            }
                            Text("Age: \(age)")
                                .font(.title)

                        }
                        
                    }
                } label: {
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
                NavigationLink {
                    Text("aa")
                } label: {
                    Image(systemName: "plus.rectangle.portrait.fill")
                        .foregroundColor(Color.primary)
                        .frame(width: 24)
                    Text("Fate Cards")
                }
                Section(header: Text("Wellness"), content: {
                    NavigationLink {
                        HealthView()
                    } label: {
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
                if age > 5 {
                    Section(header: Text("School/Work"), content:{
                        if age > 5 && age < 13 {
                            HStack {
                                Image(systemName: "character.book.closed.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 24)
                                Text("Primary School")
                                
                            }
                        }
                        if age > 12 && age < 19 {
                            HStack {
                                Image(systemName: "text.book.closed.fill")
                                    .foregroundColor(.gray)
                                    .frame(width: 24)
                                Text("Secondary School")
                                
                            }
                        }
                        if age > 15 {
                            HStack {
                                Image(systemName: "person.crop.square.filled.and.at.rectangle.fill")
                                    .foregroundColor(.cyan)
                                    .frame(width: 24)
                                Text("Occupation")
                            }
                        }
                        
                    })
                }
                
                Section(header: Text("Resources"), content: {
                    
                    if age > 18 {
                        HStack {
                            Image(systemName: "car.fill")
                                .foregroundColor(.purple)
                                .frame(width: 24)
                            Text("Assets")
                        }
                    }
                    if age > 12 {
                        HStack {
                            Image(systemName: "basketball.fill")
                                .foregroundColor(.orange)
                                .frame(width: 24)
                            Text("Activities")
                        }
                    }
                    HStack {
                        Image(systemName: "figure.2.arms.open")
                            .foregroundColor(.pink)
                            .frame(width: 24)
                        Text("Family and friends")
                    }
                })
                if age < 12 {
                    Section {
                        Button {
                            age += 6
                            face = GetFace(age: age, isMale: name.isMale)
                        } label: {
                            HStack {
                                Text("Jump 6 Years ")
                                Image(systemName: "forward.end.alt")
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
                if age == 12 {
                    Section {
                        Button {
                            age += 3
                            face = GetFace(age: age, isMale: name.isMale)
                        } label: {
                            HStack {
                                Text("Jump 3 Years ")
                                Image(systemName: "forward.end.alt")
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
                if age > 12 {
                    Section {
                        Button {
                            age += 1
                            face = GetFace(age: age, isMale: name.isMale)
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
            }
            
            .navigationTitle("Game Of A Life")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}


struct HealthView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Physical Health"), content: {
                    HStack {
                        Image(systemName: "figure.run")
                        Text("Fitness")
                    }
                    HStack {
                        Image(systemName: "fork.knife")
                        Text("Nutrition")
                    }
                    HStack {
                        Image(systemName: "scalemass.fill")
                        Text("Weight Management")
                    }
                })
                Section(header: Text("Mental Health"), content:{
                    HStack {
                        Image(systemName: "brain.head.profile")
                        Text("Stress Level")
                    }
                })
            }
            .navigationTitle("Health")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
