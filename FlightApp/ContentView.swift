//
//  ContentView.swift
//  FlightApp
//
//  Created by Игорь Тимофеев on 9.12.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            HomeView(size: size, safeArea: safeArea)
                .ignoresSafeArea(.container, edges: .vertical)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
