//
//  GridBasics2.swift
//  GridBasics
//
//  Created by administrator on 03/09/2024.
//

import SwiftUI

struct GridBasics2: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            
            Grid {
                GridRow {
                    Rect(color: .red, count: 2, total: 3)
                    Rect(color: .blue, count: 1, total: 3)
                }
                GridRow{
                    Rect(color: .green, count: 1, total: 3)
                    Rect(color: .yellow, count: 1, total: 3)
                    Rect(color: .blue, count: 1, total: 3)
                }
                GridRow{
                    Rect(color: .green, count: 1, total: 3)
                    Rect(color: .yellow, count: 1, total: 3)
                    Rect(color: .blue, count: 1, total: 3)
                }
            }
        }
    }
}


struct Rect: View {
        let color: Color
        let count: Int
        let total: Int
        
        var text: String {
            return "\(count) out of \(total)"
    }
    
    var body: some View {
        Rectangle()
            .fill(color.opacity(0.5))
            .cornerRadius(20)
            .overlay(
                Text(text)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            )
            .gridCellColumns(count)
    }
}

#Preview {
    GridBasics2()
}
