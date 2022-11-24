//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Sukhmani Kaur on 23/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 50) {
                Spacer()
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world! 123")
                Spacer()
                Circle()
                    .frame(width: 200, height: 200)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    Circle()
                        .frame(width: 100, height: 100)
                    Circle()
                        .frame(width: 100, height: 100)
                    Circle()
                        .frame(width: 100, height: 100)
                    Circle()
                        .frame(width: 100, height: 100)
                }
            })
                .padding()
            Spacer()
//            
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
