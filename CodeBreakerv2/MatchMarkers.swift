import SwiftUI
struct MatchMarkers: View {
    var matches: [Match]

    // Calculates half so odd counts (like 5) split cleanly into 3 top, 2 bottom
    private var topRowCount: Int {
        (matches.count + 1) / 2
    }

    var body: some View {
        VStack(spacing: 8) {
            // Top Row
            HStack(spacing: 8) {
                ForEach(0..<topRowCount, id: \.self) { index in
                    marker(matches[index])
                }
            }
            
            // Bottom Row
            HStack(spacing: 8) {
                createRow(start: topRowCount, stop: matches.count)
                createPlaceholder()
            }
        }
    }

    private func marker(_ match: Match) -> some View {
        Circle()
            .fill(match == .exact ? Color.primary : .clear)
            .strokeBorder(match != .nomatch ? Color.primary : Color.clear, lineWidth: 1.5)
            .aspectRatio(1, contentMode: .fit)
    }
    
    private func createRow(start: Int, stop: Int) -> some View {
        ForEach(start..<stop, id: \.self) { index in
            marker(matches[index])
        }
    }
    
    private func createPlaceholder() -> some View {
        // Add transparent placeholders to balance the row width
        ForEach(0..<(topRowCount - (matches.count - topRowCount)), id: \.self) { _ in
            Color.clear
                .aspectRatio(1, contentMode: .fit)
        }
    }
    
}

enum Match {
    case nomatch, exact, inexact
}

#Preview {
    MatchMarkers(matches: [.exact, .inexact, .exact, .inexact, .inexact])
        .padding()
}
