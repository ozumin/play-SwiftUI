//
//  ContentView.swift
//  HelloWorld
//
//  Created by Mizuo Nagayama on 4/14/20.
//  Copyright © 2020 Mizuo Nagayama. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        TabView {
            TabAView()
                .tabItem {
                    VStack {
                        Image(systemName: "a")
                        Text("TabA")
                    }
            }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
