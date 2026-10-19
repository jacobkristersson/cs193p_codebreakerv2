//
//  ContentView.swift
//  CodeBreakerv2
//
//  Created by Jacob Kristersson on 2026-08-22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            pegs(colors: [.red, .green, .green, .yellow])
            pegs(colors: [.red, .blue, .blue, .yellow])
            pegs(colors: [.red, .green, .red, .yellow])
            pegs(colors: [.yellow, .green, .blue, .yellow])
        }
        MatchMarkers(matches: [.exact, .inexact, .nomatch, .exact])
        
    }
    
    
    func pegs(colors: Array<Color>) -> some View {
        HStack {
            ForEach(colors.indices, id: \.self) { index in
                Circle()
            }

        }
    }

}





#Preview {
    ContentView()
}
