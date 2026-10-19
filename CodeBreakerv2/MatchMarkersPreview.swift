//
//  Untitled.swift
//  CodeBreakerv2
//
//  Created by Jacob Kristersson on 2026-08-31.
//

import SwiftUI

struct MatchMarkersPreview: View {
    var numberOfPegs: Int
    var matches: [Match]
    
    var body: some View {
            // Reduced spacing from 16 to 6 for a tighter grouping
            HStack(alignment: .center, spacing: 6) {
                Pegs(numberOfPegs: numberOfPegs)
                    .frame(height: 36)
                    
                MatchMarkers(matches: matches)
                    .frame(height: 36)
            }
            // Forces this specific row to align to the left
            .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading)
        }
}

#Preview {
    VStack(alignment: .leading, spacing: 24) {
            MatchMarkersPreview(numberOfPegs: 3, matches: [.exact, .inexact, .inexact])
            MatchMarkersPreview(numberOfPegs: 3, matches: [.exact])
            MatchMarkersPreview(numberOfPegs: 4, matches: [.exact, .inexact, .exact, .inexact])
            MatchMarkersPreview(numberOfPegs: 4, matches: [.exact, .inexact, .exact])
            MatchMarkersPreview(numberOfPegs: 4, matches: [.exact, .nomatch, .inexact])
            MatchMarkersPreview(numberOfPegs: 6, matches: [.exact, .exact, .exact, .inexact])
            MatchMarkersPreview(numberOfPegs: 6, matches: [.exact, .exact, .inexact, .exact, .inexact, .inexact])
            MatchMarkersPreview(numberOfPegs: 5, matches: [.exact, .inexact, .inexact, .exact, .inexact])
            MatchMarkersPreview(numberOfPegs: 5, matches: [.exact, .exact, .inexact])
            
            Spacer() // Pushes the stack to the top of the screen
        }
        .padding()
}
