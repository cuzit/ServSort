//
//  FileInformationPanel.swift
//  ServSort
//
//  Created by Matthew Silvey on 12/10/22.
//

import SwiftUI
import AVKit

struct FileInformationPanel: View {
    @State var avPlayer = AVPlayer(url: Bundle.main.url(forResource: "basedonatruestory", withExtension: "mp4")!)
    @State var isPlaying: Bool = false
    var body: some View {
        VStack {
            Group {
                Label("File Name", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
                Image(/*@START_MENU_TOKEN@*/"Image Name"/*@END_MENU_TOKEN@*/)
                VideoPlayer(player: avPlayer)
                    .onDisappear() {
                        avPlayer.isMuted = false;
                    }
                    .frame(width: 320, height: 180, alignment: .center)
                Button {
                    isPlaying ? avPlayer.pause() : avPlayer.play()
                    isPlaying.toggle()
                    avPlayer.seek(to: .zero)
                } label: {
                    Image(systemName: isPlaying ? "Stop" : "Play")
                        .padding()
                }
                Divider()
            }
            Group {
                Text("Path: blah")
                Text("Kind: FILETYPE")
                Text("Size: SIZE")
                Text("Created: DATE")
                Text("Modified: DATE")
                Text("Last Opened: DATE")
                Text("Owner: OWNER")
                Text("Group: GROUP")
                Text("Permissions: PERM")
                Text("Opens With (Def): APP")
            }
            Group {
                Text("Additional Media Info (Depends on FileType - eg. Duration, Audio Bit Rate, Size, Etc")
            }
            Spacer()
            Group {
                Button("Delete File") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
            }
        } /*@END_MENU_TOKEN@*/
        .frame(width: 200.0, height: 800.0)
    }
}

struct FileInformationPanel_Previews: PreviewProvider {
    static var previews: some View {
        FileInformationPanel()
    }
}
