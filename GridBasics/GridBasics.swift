//
//  ContentView.swift
//  GridBasics
//
//  Created by administrator on 02/09/2024.
//

import SwiftUI

struct GridBasics: View {
    var body: some View {
        ZStack {
            //BackgroundColor
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            //Grid
            Grid {
                GridRow {
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                }
                GridRow {
                    Rectangle()
                        .fill(.red)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.green)
                        .cornerRadius(20)
                        .gridCellColumns(2)
                    Rectangle()
                        .fill(.red)
                        .cornerRadius(20)

                }
                GridRow {
                    Rectangle()
                        .fill(.yellow)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.orange)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.orange)
                        .cornerRadius(20)
                    Rectangle()
                        .fill(.orange)
                        .cornerRadius(20)

                }
            }.padding()

        }
    }
}

#Preview {
    GridBasics()
}
