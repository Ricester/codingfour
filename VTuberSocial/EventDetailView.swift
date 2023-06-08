//
//  EventDetailView.swift
//  VTuberSocial
//
//  Created by Erika Imanaka Yu on 08/06/2023.
//

import SwiftUI

struct EventDetailView: View {
    
    let details: [StreamEventData]
    
    var body: some View {
        ScrollView {
            ForEach(details, id: \.id) { event in
                HStack {
                    Image(event.iconName).resizable().scaledToFit().frame(width:70, height:70, alignment: .center).padding()
                    VStack(alignment: .leading, spacing: 5) {
                        Text(event.title).fontWeight(.semibold)
                        Text(event.description)
                        Text(event.timestampText).fontWeight(.thin)
                    }
                    Spacer()
                }.frame(maxWidth: .infinity)
            }
        }.zIndex(-2)
    }
}

struct EventDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EventDetailView(details: VTuberStatsList.topTen.first!.events)
    }
}
