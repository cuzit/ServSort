//
//  ContentView.swift
//  ServSort
//
//  Created by Matthew Silvey on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Label("Header", systemImage: "42.circle")
            }
            .frame(minWidth: 800.0, maxWidth: .infinity, minHeight: 50.0, maxHeight: 50.0, alignment: .leading)
            HStack (alignment: .top){
                VStack(
                    alignment: .leading, spacing: 0
                ) {
                    Label("Current File", systemImage: "42.circle")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    FileInformationPanel()
                }
                .frame(width: 300.0, alignment: .leading)
                Divider()
                VStack() {
                    Label("Destination", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                        .font(.title)
                    Text("DestinationFolder Option")
                    Text("DestinationFolder Option2")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                VStack() {
                    Label("Similar Files", systemImage: "42.circle")
                        .font(.title)
                    Text("This sidebar will list any files deemed to be similar, and each entry in the list will have a preview button.")
                    Text("This will be accomplished by pulling in a db of all files in the top dir, and then using the naems and other metadata to pull a list.")
                }
                .frame(width: 250.0, alignment: .trailing)
            }
            .frame(minWidth: 800.0, maxWidth: .infinity, minHeight: 600.0, maxHeight: .infinity, alignment: .leading)
            
        }
        
    }
}

public struct ContentView_Previews: PreviewProvider {
    public static var previews: some View {
        ContentView()
    }
}
