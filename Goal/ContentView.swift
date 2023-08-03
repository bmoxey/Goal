//
//  ContentView.swift
//  Goal
//
//  Created by Brett Moxey on 3/8/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(Color.blue.gradient)
                .ignoresSafeArea()
            VStack {
                VStack {
                    Text("Game of a life")
                        .font(.system(size:48, weight: .semibold))
                        .foregroundColor(.white)
                        
                    Text("by Brett Moxey")
                        .font(.system(size:24))
                        .foregroundColor(.white)
                }
                .padding(.vertical, 50)
                Button {
                    print("Doit")
                } label: {
                    HStack {
                        Text("🤰")
                            .font(.system(size:64))
                        Text("Create a new life")
                            .font(.system(size:32))
                            .foregroundColor(.black)
                            .frame(width:160)

                    }
                    .frame(width: 280, height:120)
                    .background(Color.white.gradient)
                    .cornerRadius(10.0)
                    .padding(.bottom, 50)
                }
                Button {
                    print("Go to graves")
                } label: {
                    HStack {
                        Text("🪦")
                            .font(.system(size:64))
                        Text("Visit grave stones")
                            .font(.system(size:32))
                            .foregroundColor(.black)
                            .frame(width:160)
                    }
                    .frame(width: 280, height:120)
                    .background(Color.white.gradient)
                    .cornerRadius(10.0)
                    .padding(.bottom, 50)
                }
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
