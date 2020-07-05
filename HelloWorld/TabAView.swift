//
//  TabAView.swift
//  HelloWorld
//
//  Created by Mizuo Nagayama on 7/5/20.
//  Copyright © 2020 Mizuo Nagayama. All rights reserved.
//

import SwiftUI

struct Figures: View {
    var body: some View {
        ZStack {
            Capsule().foregroundColor(Color.blue)
            .frame(width: 200, height: 400)
            .rotationEffect(.degrees(50))
            .clipped()
            Capsule()
                .stroke(lineWidth: 10)
                .foregroundColor(Color.red)
            .frame(width: 200, height: 400)
            .rotationEffect(.degrees(-45))
                .position(x: 300, y: 400)
        }
    }
}

struct TabAView: View {
    var body: some View {
        VStack {
            Figures()
            HStack {
                Text("Hello World")
                    .font(.title)
                    .foregroundColor(Color.red)
                    .rotation3DEffect(.degrees(45), axis: (x: 0, y: 1, z: 0))
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                    .offset(x: 20, y:0)
            }
            .padding(.top, 80)
            Spacer()
            HStack {
                Text("Hello\nWorld")
                    .font(.system(size:100))
                Text("Place\nholder")
                    .fontWeight(.ultraLight)
                    .offset(x: 20, y:0)
            }
            Spacer()
            Text("あああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ")
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(width: 200.0)
                .border(Color.green, width: 5)
            Image("yoshiyoshi")
            .resizable()
                .aspectRatio(contentMode: .fill)
                .scaleEffect(1.5)
                .offset(x: -70, y: 30)
                .frame(width: 300, height: 200)
            .clipped()
            .overlay(
                Text("Text on image")
                    .font(.title)
            )
        }
    }
}

struct TabAView_Previews: PreviewProvider {
    static var previews: some View {
        TabAView()
    }
}

