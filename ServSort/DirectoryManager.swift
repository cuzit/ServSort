//
//  DirectoryManager.swift
//  ServSort
//
//  Created by Matthew Silvey on 12/10/22.
//

import Foundation
import Files
import Collections

internal enum DirType {
    case Root, Destination, Ignore, Unassigned
}

internal enum DirectoryManagerError: Error {
    case InvalidRoot, DirectoryInitializationError
}

internal class FileStructure {
    var FileStructureRoot: String = ""
    var RootFolder: Folder
    var Directories: [String: Dir] = [:]
    
    init(root: String) throws {
        FileStructureRoot = root
        
        do {
            try RootFolder = Folder(path: FileStructureRoot)
        }
        catch {
            throw DirectoryManagerError.InvalidRoot;
        }
        
        do {
            Directories = try InitDirectories(root: RootFolder)
            //TODO: Directories should be a list
        }
        catch {
            throw DirectoryManagerError.DirectoryInitializationError
        }
    }
    
    deinit {
        //TODO: If save data on exit enabled, write file structure and info, state, etc. to disk/db
    }
    
    func InitDirectories(root: Folder) throws -> [String: Dir] {
        do {
            var DefinedDirs: [String: Dir] = [:]
            for folder in try Folder(path: root.path).subfolders {
                var Directory = Dir(directory: folder, type: DirType.Unassigned)
                DefinedDirs[folder.name] = Directory
            }
            return DefinedDirs
        }
        catch {
            throw DirectoryManagerError.DirectoryInitializationError
        }
    }
}

internal class Dir {
    //TODO: Option for actually invoking a move upon taking action, or creating a "command list" to copy-paste into remote terminal
    var Directory: Folder?
    var Parent: Folder?
    var Tags: [String]
    var DirectoryType: DirType
    
    init() {
        Directory = nil;
        Parent = nil;
        Tags = []
        DirectoryType = DirType.Unassigned;
    }
    
    init(directory: Folder, parent: Folder? = nil, type: DirType) {
        Directory = directory;
        Parent = parent
        Tags = []
        DirectoryType = type
    }
    
    init(directory: Folder, parent: Folder? = nil, type: DirType, tags: [String]) {
        Directory = directory;
        Parent = parent
        DirectoryType = type
        Tags = tags
    }
    
    func InitDirectories(root: Folder) -> [String: Dir] {
        return [:]
    }
}


