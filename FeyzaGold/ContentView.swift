//
//  ContentView.swift
//  FeyzaGold
//
//  Created by FeyzaGold on 30.11.2024.
//

import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}

struct ContentView: View {
    
    @State private var showLoading :Bool = false
    var body: some View {
        VStack {
            WebView(url: URL(string: "https:feyzagold.com")!, showLoading: $showLoading)
                .overlay(showLoading ? ProgressView("Yukleniyor...").toAnyView(): EmptyView().toAnyView())
        }
    }
}

#Preview {
    ContentView()
}
