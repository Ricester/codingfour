//
//  GoLiveView.swift
//  VTuberSocial
//
//  Created by Erika Imanaka Yu on 08/06/2023.
//

import SwiftUI

// A view to enable you to go live with a message.
// This view is currently unfinished :(
struct GoLiveView: View {
    // The message that you wish to go live with
    @State private var message: String = "";
    @State private var selection: Int? = nil;
    
    var body: some View {
        VStack {
            Text("Start Streaming").font(.system(size:32))
            TextField("Message: ", text: $message).padding().frame(height: 200)
            Button("Go Live!", action: postMessage)
            Spacer()
        }
    }

    func postMessage() {
        var tuber = VTuberStatsList.topTen[1]
        tuber.events.append(StreamEventData(
            timestampText: "1 minute ago",
            title: "GalicTuber started streaming!",
            description: message,
            iconName: "garlic"
        ))
        self.selection = 1
    }
}

struct GoLiveView_Previews: PreviewProvider {
    static var previews: some View {
        GoLiveView()
    }
}
