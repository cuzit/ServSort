//
//  FileInformationPanel.swift
//  ServSort
//
//  Created by Matthew Silvey on 12/10/22.
//

import SwiftUI
import AVKit

struct FileInformationPanel: View {
    @State var Info: FileInfo? = nil
    
    var body: some View {
        VStack {
            Group {
                FileInformationHeader()
                Divider()
            }
            Group {
                FileInformationAdditionalInfo(Info: Info)
            }
            Spacer()
            Group {
                Button("Delete File") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
            }
        } /*@END_MENU_TOKEN@*/
        .frame(minWidth: 300.0, maxWidth: 300.0, maxHeight: .infinity)
    }
}

struct FileInformationPanel_Previews: PreviewProvider {
    static var previews: some View {
        let Info: FileInfo = FileInfo.CreateWithTestInfo()
        FileInformationPanel(Info: Info)
    }
}
