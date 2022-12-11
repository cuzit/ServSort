//
//  FileInformationPanel.swift
//  ServSort
//
//  Created by Matthew Silvey on 12/10/22.
//

import SwiftUI
import AVKit

struct FileInformationPanel: View {
    
    var body: some View {
        VStack {
            Group {
                FileInformationHeader()
                Divider()
            }
            Group {
                FileInformationAdditionalInfo()
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
