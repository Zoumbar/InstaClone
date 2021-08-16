//
//  ContentView.swift
//  InstaClone
//
//  Created by Esteban on 16/08/2021.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    var body: some View {
        HeaderView(postCount: 78, followers: 4685)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

