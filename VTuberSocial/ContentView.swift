//
//  ContentView.swift
//  VTuberSocial
//
//  Created by Erika Imanaka Yu on 05/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            VTuberDetailView(detail: VTuberStatsList.topTen.first!)
                .tabItem {
                    Label("Me", systemImage: "person.fill")
                }
            TopTenView(details: VTuberStatsList.topTen).tabItem {
                Label("Rankings", systemImage: "star.fill")
            }
            GoLiveView()
                .tabItem {
                    Label("Go Live!", systemImage: "video.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
    }
}
