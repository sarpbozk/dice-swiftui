//
//  ContentView.swift
//  dicee
//
//  Created by HOA on 28.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 2)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {}) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .padding(.horizontal)
                }

            }
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(contentMode: .fit)
            .padding()
    }
}
