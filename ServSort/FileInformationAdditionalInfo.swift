//
//  FileInformationAdditionalInfo.swift
//  ServSort
//
//  Created by Matthew Silvey on 12/11/22.
//

import SwiftUI

struct FileInformationAdditionalInfo: View {
    @State var Path: String = ""
    @State var Kind: String = ""
    @State var Size: String = ""
    @State var CreatedDate: String = ""
    @State var ModifiedDate: String = ""
    @State var LastOpenedDate: String = ""
    @State var Owner: String = ""
    @State var FileGroup: String = ""
    @State var Permissions: String = ""
    @State var OpensWith: String = ""
    @State var AdditionalInfo: [String: String] = [:]

    var body: some View {
        VStack {
            Label("File Information", systemImage: "42.circle")
            Group {
                Text("Path: \(Path)")
                Text("Kind: \(Kind)")
                Text("Size: \(Size)")
                Text("Created: \(CreatedDate)")
                Text("Modified: \(ModifiedDate)")
                Text("Last Opened: \(LastOpenedDate)")
                Text("Owner: \(Owner)")
                Text("Group: \(FileGroup)")
                Text("Permissions: \(Permissions)")
                Text("Opens With (Def): \(OpensWith)")
            }
            Divider()
            Label("Additional Information", systemImage: "42.circle")
            Group {
//                for (InfoLabel, InfoCaption) in AdditionalInfo {
//                    Text("\(InfoLabel): \(InfoCaption)")
//                }
//                `List(0..<AdditionalInfo.count) { Key in
//                    Text("\(Key): \(AdditionalInfo[Key])")
//                }`
                Text("Additional Media Info (Depends on FileType - eg. Duration, Audio Bit Rate, Size, Etc")
            }
        }
    }
}

struct FileInformationAdditionalInfo_Previews: PreviewProvider {
    static var previews: some View {
        let TestDic: [String: String] = ["Duration": "1H43M", "Size": "1280x720"]
        FileInformationAdditionalInfo(Path:"/mnt/Porn/Stash/Unsorted/Test", Kind:"MP4 (Video)",
                                      Size: "4.3GB", CreatedDate: "August 18, 2021",
                                      ModifiedDate: "December 4, 2022", LastOpenedDate: "December 4, 2022",
                                      Owner: "cuzit", FileGroup: "nobody", Permissions: "755",
                                      OpensWith: "IINA.app", AdditionalInfo: TestDic)
    }
}
