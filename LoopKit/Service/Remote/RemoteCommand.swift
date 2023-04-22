//
//  RemoteCommand.swift
//  LoopKit
//
//  Created by Bill Gestrich on 2/25/23.
//  Copyright © 2023 LoopKit Authors. All rights reserved.
//

public protocol RemoteCommand {
    var id: String {get}
    var action: Action {get}
    var status: RemoteCommandStatus {get}
    func validate() throws
    //TODO: Add creation date
    
    /*
     TODO: Should we support "future" commands?
     TODO: Should the expiration date be in here?
     TODO: Should creationDate be in here?
     */
    
    func markInProgress() async throws
    func markError(_ error: Error) async throws
    func markSuccess() async throws
}
