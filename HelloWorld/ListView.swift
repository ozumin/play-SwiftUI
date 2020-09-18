//
//  ListView.swift
//  HelloWorld
//
//  Created by Mizuo Nagayama on 9/18/20.
//  Copyright © 2020 Mizuo Nagayama. All rights reserved.
//

import SwiftUI

let places = ["取手", "エンスヘデ", "ディリ", "つくば", "世田谷", "新宿", "皇居"]

struct ListView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("前半")) {
                    ForEach(0..<places.count/2){ item in
                        HStack {
                            Text(String(item))
                            Text(places[item])
                        }
                    }
                }
                Section(header: Text("後半")) {
                    ForEach(places.count/2...){ item in
                        HStack {
                            Text(String(item))
                            Text(places[item])
                        }
                    }
                }
            }.navigationBarTitle("リスト")
                .listStyle(GroupedListStyle())
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
