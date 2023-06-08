//
//  HomeView.swift
//  VTuberSocial
//
//  Created by Erika Imanaka Yu on 08/06/2023.
//

import SwiftUI

func allEventsInter() -> [StreamEventData] {
    var result: [StreamEventData] = []
    for stat in VTuberStatsList.topTen {
        for i in stat.events {
            result.append(i)
        }
    }
    
    result.shuffle()
    return result
}

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Whats new?").padding(5).fontWeight(.semibold).font(.system(size: 32))
            Divider()
            EventDetailView(details: allEventsInter())
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
