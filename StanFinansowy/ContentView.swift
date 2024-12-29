//
//  ContentView.swift
//  StanFinansowy
//
//  Created by Kamil Kościelny on 16.11.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .padding(.vertical, 10.0)
                    .frame(width: 50.0)
                VStack{
                    Image(systemName: "table")
                        .padding(.top, 20.0)
                        .imageScale(.large)
                    Image(systemName: "eurosign.gauge.chart.lefthalf.righthalf")
                        .padding(.top, 5.0)
                        .imageScale(.large)
                    Spacer()
                }
            }
                Spacer()
                RoundedRectangle(cornerRadius: 10)
                    .padding([.top, .bottom, .trailing], 10.0)
        }
            

    }
}

#Preview {
    ContentView()
}
