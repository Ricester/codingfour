//
//  VTuberData.swift
//  VTuberSocial
//
//  Created by Erika Imanaka Yu on 07/06/2023.
//

import SwiftUI


struct StreamEventData : Identifiable {
    let id = UUID()
    let timestampText: String
    let title: String
    let description: String
    let iconName: String
}

struct RankingData {
    let rank: Int
    let sevenDay: Int
    let thirtyDay: Int
    let allTime: Int
}

struct VTuberStats : Identifiable {
    let id = UUID()
    let imageName: String
    let topColour: Color
    let bottomColour: Color
    let name: String
    let twitch: String
    let twitter: String
    let youtube: String
    let discord: String
    let ranking: RankingData
    var events: [StreamEventData]
}

struct VTuberStatsList {
    static var topTen = [
        VTuberStats(
            imageName: "exmaple",
            topColour: Color("lightishPink"),
            bottomColour:Color("lighterishPink"),
            name: "Riri",
            twitch: "ririttv",
            twitter: "ririttv",
            youtube: "ririclips",
            discord: "ririgang",
            ranking: RankingData(rank: 1, sevenDay: 24, thirtyDay: 90, allTime: 342),
            events: [
                StreamEventData(
                    timestampText: "40 minutes ago",
                    title: "Riri started streaming!",
                    description: "Come and join in this 24 hour stream marathon!",
                    iconName: "exmaple"
                ),
                StreamEventData(
                    timestampText: "1 day ago",
                    title: "Riri started streaming!",
                    description: "Come and join in this awesome cooking stream!\nWe are making cookies!",
                    iconName: "exmaple"
                ),
                StreamEventData(
                    timestampText: "1 day ago",
                    title: "Riri started streaming!",
                    description: "Come and join in this awesome cooking stream!\nWe are making cookies!",
                    iconName: "exmaple"
                ),
                StreamEventData(
                    timestampText: "40 minutes ago",
                    title: "Riri started streaming!",
                    description: "Come and join in this 24 hour stream marathon!",
                    iconName: "exmaple"
                ),
                StreamEventData(
                    timestampText: "1 day ago",
                    title: "Riri started streaming!",
                    description: "Come and join in this awesome cooking stream!\nWe are making cookies!",
                    iconName: "exmaple"
                ),
                StreamEventData(
                    timestampText: "1 day ago",
                    title: "Riri started streaming!",
                    description: "Come and join in this awesome cooking stream!\nWe are making cookies!",
                    iconName: "exmaple"
                ),
                StreamEventData(
                    timestampText: "40 minutes ago",
                    title: "Riri started streaming!",
                    description: "Come and join in this 24 hour stream marathon!",
                    iconName: "exmaple"
                ),
                StreamEventData(
                    timestampText: "1 day ago",
                    title: "Riri started streaming!",
                    description: "Come and join in this awesome cooking stream!\nWe are making cookies!",
                    iconName: "exmaple"
                ),
                StreamEventData(
                    timestampText: "1 day ago",
                    title: "Riri started streaming!",
                    description: "Come and join in this awesome cooking stream!\nWe are making cookies!",
                    iconName: "exmaple"
                ),
            ]
        ),
        VTuberStats(
            imageName: "garlic",
            topColour: .yellow,
            bottomColour: .white,
            name: "GarlicTuber",
            twitch: "garlicbreadftw",
            twitter: "welovegarlic",
            youtube: "garlic4lyf",
            discord: "spicybreadcrew",
            ranking: RankingData(rank: 2, sevenDay: 70, thirtyDay: 678, allTime: 1094),
            events: [
                StreamEventData(
                    timestampText: "12 minutes ago",
                    title: "GarlicTuber started streaming!",
                    description: "Cooking Stream, garlic only!",
                    iconName: "garlic"
                ),
                StreamEventData(
                    timestampText: "1 day ago",
                    title: "GarlicTuber started streaming!",
                    description: "Spicy Bread Enjoyers Only",
                    iconName: "garlic"
                ),
            ]
        ),
    ]
}
