//
//  FileInformationAdditionalInfo.swift
//  ServSort
//
//  Created by Matthew Silvey on 12/11/22.
//

import SwiftUI

struct FileInformationAdditionalInfo: View {
    @State var Info: FileInfo? = nil

    var body: some View {
        VStack {
            Label("File Information", systemImage: "42.circle")
            Group {
                Text("Path: \(Info?.Path == nil ? "Path invalid" : Info!.Path!)")
                Text("Kind: \(Info?.Kind == nil ? "" : Info!.Kind!)")
                Text("Size: \(Info?.Size == nil ? "" : Info!.Size!)")
                Text("Created: \(Info?.CreatedDate == nil ? "" : Info!.CreatedDate!)")
                Text("Modified: \(Info?.ModifiedDate == nil ? "" : Info!.ModifiedDate!)")
                Text("Last Opened: \(Info?.LastOpenedDate == nil ? "" : Info!.LastOpenedDate!)")
                Text("Owner: \(Info?.Owner == nil ? "" : Info!.Owner!)")
                Text("Group: \(Info?.FileGroup == nil ? "" : Info!.FileGroup!)")
                Text("Permissions: \(Info?.Permissions == nil ? "" : Info!.Permissions!)")
                Text("Opens With (Def): \(Info?.OpensWith == nil ? "" : Info!.OpensWith!)")
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
        let Info: FileInfo = FileInfo.CreateWithTestInfo()
        FileInformationAdditionalInfo(Info: Info)
    }
}

struct FileInfo {
    @State var Path: String? = ""
    @State var Kind: String? = ""
    @State var Size: String? = ""
    @State var CreatedDate: String? = ""
    @State var ModifiedDate: String? = ""
    @State var LastOpenedDate: String? = ""
    @State var Owner: String? = ""
    @State var FileGroup: String? = ""
    @State var Permissions: String? = ""
    @State var OpensWith: String? = ""
    @State var AdditionalInfo: [String: String]? = [:]
    
    static func CreateWithTestInfo() -> FileInfo {
        
        let TestDic: [String: String] = ["Duration": "1H43M", "Size": "1280x720"]
        let TestInfo: FileInfo = FileInfo(
            Path: "/mnt/Porn/Stash/Unsorted/Test",
            Kind: "MP4 (Video)",
            Size: "4.3GB",
            CreatedDate: "August 18, 2021",
            ModifiedDate: "December 4, 2022",
            LastOpenedDate: "December 4, 2022",
            Owner: "cuzit",
            FileGroup: "nobody",
            Permissions: "755",
            OpensWith: "IINA.app",
            AdditionalInfo: TestDic
            )
        return TestInfo
    }
}
