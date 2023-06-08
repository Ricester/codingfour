//
//  VTuberDetailView.swift
//  VTuberSocial
//
//  Created by Erika Imanaka Yu on 07/06/2023.
//

import SwiftUI

struct VTuberDetailView: View {
    
    var detail: VTuberStats
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [detail.topColour, detail.bottomColour]), startPoint: .topLeading, endPoint: .bottomTrailing
            ).ignoresSafeArea()
            VStack {
                HStack {
                    ZStack(alignment: .leading) {
                        Image(detail.imageName).resizable().aspectRatio(contentMode: .fit).frame(width:120, height:120, alignment: .center).padding()
                    }
                    VStack(spacing:1) {
                        Text(detail.name).font(.system(size: 32, weight: .bold, design: .default)).multilineTextAlignment(.center)
                        HStack {
                            Image("twitch")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            Text(detail.twitch).foregroundColor(Color("linkColor"))
                        }
                        HStack {
                            Image("twitter")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            Text(detail.twitter).foregroundColor(Color("linkColor"))
                        }
                        HStack {
                            Image("youtube")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            Text(detail.youtube).foregroundColor(Color("linkColor"))
                        }
                        HStack {
                            Image("discord")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                            Text(detail.discord).foregroundColor(Color("linkColor"))
                        }
                    }.frame(
                        maxWidth: .infinity
                    )
                }.frame(
                    maxWidth: .infinity,
                    alignment: .leading
                ).padding()
                Divider().frame(height:1).overlay(.white)
                RankingView(detail: detail.ranking)
                Divider().frame(height:1).overlay(.white)
                EventDetailView(details: detail.events).listRowInsets(EdgeInsets()).padding(0)
            }.frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .leading
            )
        }
    }
}

struct VTuberDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VTuberDetailView(detail: VTuberStatsList.topTen.first!).previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
    }
}
