//
//  FileInformationHeader.swift
//  ServSort
//
//  Created by Matthew Silvey on 12/11/22.
//

import SwiftUI
import AVKit

struct FileInformationHeader: View {
    @State var avPlayer = AVPlayer(url: Bundle.main.url(forResource: "basedonatruestory", withExtension: "mp4")!)
    @State var isPlaying: Bool = false
    @State var isVideo: Bool = true
    @State var isImage: Bool = false
    
    //Debug Vars
    @State var showingAlert: Bool = false
    
    var body: some View {
        VStack {
            Label("File Name", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            Image(/*@START_MENU_TOKEN@*/"Image Name"/*@END_MENU_TOKEN@*/)
                .hidden()
            VideoPlayer(player: avPlayer)
                .onDisappear() {
                    avPlayer.isMuted = false;
                }
                .frame(width: 320, height: 180, alignment: .center)
            HStack {
                Button {
                    showingAlert = true
                } label: {
                    Text("Open...")
                    Image("Open With Default Application...")
                        .padding()
                }
                .alert("This is not currently implemented.", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }
                }
                Button {
                    isPlaying ? avPlayer.pause() : avPlayer.play()
                    isPlaying.toggle()
                    avPlayer.seek(to: .zero)
                } label: {
                    Text(isPlaying ? "Stop" : "Play")
                    Image(systemName: isPlaying ? "Stop" : "Play")
                        .padding()
                }
            }
        }
    }
}

struct FileInformationHeader_Previews: PreviewProvider {
    static var previews: some View {
        FileInformationHeader()
    }
}
