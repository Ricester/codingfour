//
//  RankingView.swift
//  VTuberSocial
//
//  Created by Erika Imanaka Yu on 07/06/2023.
//

import SwiftUI

func hoursToDisplay(hours: Int) -> String {
    if (hours > 8760) {
        let years = hours / 8760
        return String(format: "%dY", years)
    }
    if (hours > 99) {
        let days = hours / 24
        return String(format: "%dD", days)
    }
    return String(format: "%dH", hours)
}

struct RankingView: View {
    
    var detail: RankingData
    
    var body: some View {
        HStack {
            VStack {
                Text(String(detail.rank)).font(.custom("BlackOpsOne-Regular", size: 20))
                Text("Rank")
            }.frame(maxWidth: .infinity)
            VStack {
                Text(hoursToDisplay(hours: detail.sevenDay)).font(.custom("BlackOpsOne-Regular", size: 20))
                Text("7d")
            }.frame(maxWidth: .infinity)
            VStack {
                Text(hoursToDisplay(hours: detail.thirtyDay)).font(.custom("BlackOpsOne-Regular", size: 20))
                Text("30d")
            }.frame(maxWidth: .infinity)
            VStack {
                Text(hoursToDisplay(hours: detail.allTime)).font(.custom("BlackOpsOne-Regular", size: 20))
                Text("Overall")
            }.frame(maxWidth: .infinity)
        }.frame(maxWidth: .infinity)
    }
}

struct RankingView_Previews: PreviewProvider {
    static var previews: some View {
        RankingView(detail: RankingData(rank: 2, sevenDay: 10, thirtyDay: 200, allTime: 3000))
    }
}
