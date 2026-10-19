//
//  Pegs.swift
//  CodeBreakerv2
//
//  Created by Jacob Kristersson on 2026-09-14.
//
import SwiftUI


struct Pegs: View {
    let numberOfPegs: Int
    var body: some View {
        
        HStack(spacing: 8) {
            ForEach(0 ..< numberOfPegs, id: \.self) { _ in
                Circle()
            }
        }
        
    }
    

}
