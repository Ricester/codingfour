//
//  TopTenView.swift
//  VTuberSocial
//
//  Created by Erika Imanaka Yu on 08/06/2023.
//

import SwiftUI


// A view contains the top ten VTubers and there ranking.
// Clicking on any of the rankings takes you to the VTubers details page.
struct TopTenView: View {
    
    let details: [VTuberStats]
    
    var body: some View {
        NavigationView {
            List(details, id: \.id) { detail in
                NavigationLink(
                    destination: VTuberDetailView(detail: detail).padding([.top], -60)
                ) {
                    HStack {
                        Image(detail.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width:70, height:70)
                            .padding(.vertical, 4)
                        
                        Text(detail.name)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                            .font(.system(size: 28))
                            .padding(10)
                        Spacer()
                        Text(String(detail.ranking.rank)).font(.custom("BlackOpsOne-Regular", size: 32))
                            .multilineTextAlignment(.trailing)
                    }
                }
            }.navigationTitle("Top VTubers")
            
        }
    }
}

struct TopTenView_Previews: PreviewProvider {
    static var previews: some View {
        TopTenView(details: VTuberStatsList.topTen)
    }
}

