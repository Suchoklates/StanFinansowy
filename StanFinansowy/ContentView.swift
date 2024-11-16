//
//  ContentView.swift
//  StanFinansowy
//
//  Created by Kamil Kościelny on 16.11.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .padding(.vertical, 10.0)
                    .frame(width: 50.0)
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .padding([.top, .bottom, .trailing], 10.0)
        }
        }

    }
}

#Preview {
    ContentView()
}
