//
//  HomeView.swift
//  FlightApp
//
//  Created by Игорь Тимофеев on 9.12.22.
//

import SwiftUI

struct HomeView: View {
    var size: CGSize
    var safeArea: EdgeInsets
    var body: some View {
        VStack(spacing: 0) {
            HeaderView()
        }
        
        @ViewBuilder
        func HeaderView() -> some View {
            VStack{
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: size.width * 0.4)
                    .frame(maxWidth: .infinity, aligment: .leading)
            }
            .padding(15)
            .padding(.top, safeArea.top)
            .background {
                Rectangle()
                    .fill(.linearGradient(colors: [
                        Color("BlueTop"),
                        Color("BlueTop"),
                        Color("BlueBotto")
                    ], startPoint: .top, endPoint: .bottom))
            }
        }
    }
}
    
    
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
