//
//  ContentView.swift
//  ServSort
//
//  Created by Matthew Silvey on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack (alignment: .top){
            VStack(alignment: .leading) {
                Label("Current File", systemImage: "42.circle")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                FileInformationPanel()
            }
            .frame(width: 250.0, alignment: .leading)
            Divider()
            VStack(alignment: .trailing) {
                Label("Destination", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                    .font(.title)
                Text("DestinationFolder Option")
                Text("DestinationFolder Option2")
            }
            .frame(alignment: .trailing)
            VStack(alignment: .trailing) {
                Label("Similar Files", systemImage: "42.circle")
                    .font(.title)
                Text("This sidebar will list any files deemed to be similar, and each entry in the list will have a preview button.")
                Text("This will be accomplished by pulling in a db of all files in the top dir, and then using the naems and other metadata to pull a list.")
            }
        }
        .frame(width: 800.0, height: 600.0)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
